/*
 * ili9341.c
 *
 *  Created on: Dec 31, 2025
 *      Author: Ada Locriana (just adapted the freely available code)
 */

#include "main.h"
#include "ili9341.h"
#include <string.h>
#include "string.h"
#include "cmsis_os.h"

static SPI_HandleTypeDef* spi;
static DMA_HandleTypeDef* dma;
static GPIO_TypeDef *gpio_CS;
static uint32_t pin_CS;
static GPIO_TypeDef *gpio_DC;
static uint32_t pin_DC;
static GPIO_TypeDef *gpio_RST;
static uint32_t pin_RST;

#define LCD_CS_1		HAL_GPIO_WritePin(gpio_CS,pin_CS,1);
#define LCD_CS_0		HAL_GPIO_WritePin(gpio_CS,pin_CS,0);
#define LCD_DC_1		HAL_GPIO_WritePin(gpio_DC,pin_DC,1);
#define LCD_DC_0		HAL_GPIO_WritePin(gpio_DC,pin_DC,0);
#define LCD_RST_1		HAL_GPIO_WritePin(gpio_RST,pin_RST,1);
#define LCD_RST_0		HAL_GPIO_WritePin(gpio_RST,pin_RST,0);

#define LCD_DC_DATA			LCD_DC_1
#define LCD_DC_CMD			LCD_DC_0

#define LCD_BUF_SIZE		(LCD_X_SIZE * LCD_Y_SIZE)
#define WRITE_BOX_NB_Y		8
#define WRITE_BOX_SIZE_Y	(LCD_Y_SIZE / WRITE_BOX_NB_Y)
#define LCD_DMA_BUFFER_SIZE (WRITE_BOX_SIZE_Y * LCD_X_SIZE)

#if LCD_VERTICAL
	#define ILI9341_VERTICAL_1			0
	#define ILI9341_VERTICAL_2			2
#else
	#define ILI9341_HORIZONTAL_1		1
	#define ILI9341_HORIZONTAL_2		3
#endif



static volatile uint8_t lcd_buffer[LCD_Y_SIZE][LCD_X_SIZE];
static volatile uint16_t lcd_dma_buffer[LCD_DMA_BUFFER_SIZE];
//color encoding [7:0] RRRGGGBB


uint8_t* ili9341_get_buf_ptr(void){
	return (void*)lcd_buffer;
}

static uint16_t pixel_expand(uint8_t in){
	uint16_t out = 0;
	if( in & (1<<7) ) out |= 0x0080;
	if( in & (1<<6) ) out |= 0x0040;
	if( in & (1<<5) ) out |= 0x0038;
	if( in & (1<<4) ) out |= 0x0004;
	if( in & (1<<3) ) out |= 0x0002;
	if( in & (1<<2) ) out |= 0xE001;
	if( in & (1<<1) ) out |= 0x1000;
	if( in & (1<<0) ) out |= 0x0F00;
	return out;
}


static void spi_write(uint8_t data){
	HAL_SPI_Transmit(spi, &data, 1, 1);
}

static void start_transfer(void){
	LCD_CS_0;
}

static void end_transfer(void){
	LCD_CS_1;
}

static void write_cmd(uint8_t cmd){
	LCD_DC_CMD;
	spi_write(cmd);
	LCD_DC_DATA;
}

static void write_data(uint8_t data){
	spi_write(data);
}



void ili9341_reset(void){
	//apply Reset
	LCD_RST_1;
	HAL_Delay(100);
	LCD_RST_0;
	HAL_Delay(100);
	LCD_RST_1;
	HAL_Delay(100);
}


void ili9341_rotation(uint8_t rotation)
{
	start_transfer();
	write_cmd(0x36);
	end_transfer();
	HAL_Delay(1);

	start_transfer();
	switch(rotation)
	{
#if LCD_VERTICAL
		case ILI9341_VERTICAL_1:
			write_data(0x40|0x08);
			break;
		case ILI9341_VERTICAL_2:
			write_data(0x80|0x08);
			break;
#else
		case ILI9341_HORIZONTAL_1:
			write_data(0x20|0x08);
			break;
		case ILI9341_HORIZONTAL_2:
			write_data(0x40|0x80|0x20|0x08);
			break;
#endif
		default:
			xprintf("ili9341_rotation: incorrect rotation param %d, check horizontal/vertical define\n",(int)rotation);
			break;
	}
	end_transfer();
}

void ili9341_set_address(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2){
	//xprintf("set address: x: %03d..%03d, y: %03d..%03d\n",x1,x2,y1,y2);
	start_transfer();
	write_cmd(0x2A);
	write_data(x1>>8);
	write_data(x1);
	write_data(x2>>8);
	write_data(x2);

	write_cmd(0x2B);
	write_data(y1>>8);
	write_data(y1);
	write_data(y2>>8);
	write_data(y2);

	write_cmd(0x2C);
	end_transfer();
}



/*
 * This function may be useful in partial refresh of a selected area of the disp.
 * It selects a part of the display - a box. The boxes are organized vertically,
 * with the box of index 0 located at the top of the display (starting @ Y=0)
 * size of the box is LCD_Y_SIZE / total_boxes
 * Returns a number of pixels to be filled in the box of the selected size.
 */
static int16_t select_box(int box_nb, uint16_t* start_pixel_y){
	uint16_t pixel_nb = 0;
	int box_y1 = box_nb * WRITE_BOX_SIZE_Y;
	int box_y2 = box_y1 + WRITE_BOX_SIZE_Y - 1;
	pixel_nb = LCD_X_SIZE * WRITE_BOX_SIZE_Y;
	*start_pixel_y = (uint16_t)box_y1;
	//xprintf("selecting box %02d out of %02d, size=%03d px\n",box_nb,WRITE_BOX_NB_Y,pixel_nb);
	ili9341_set_address(0, box_y1, LCD_X_SIZE-1, box_y2);
	return pixel_nb;
}


void ili9341_update(){
	const int box_nb = 8;
	for(int box=0;box<box_nb;box++){
		uint16_t start_pixel_y;
		select_box(box, &start_pixel_y);
		uint8_t* in_ptr = (void*)&lcd_buffer[start_pixel_y][0];
		for(int dma_buf_idx=0; dma_buf_idx < LCD_DMA_BUFFER_SIZE; dma_buf_idx++){
			lcd_dma_buffer[dma_buf_idx] = pixel_expand(*in_ptr++);
		}
		start_transfer();
		//HAL_SPI_Transmit(spi, (void*)lcd_dma_buffer, sizeof(lcd_dma_buffer), 2);
		HAL_SPI_Transmit_DMA(spi, (void*)lcd_dma_buffer, sizeof(lcd_dma_buffer));
		vTaskDelay(20);
		end_transfer();
	}
	/*ili9341_set_address(0,0,LCD_X_SIZE-1,LCD_Y_SIZE/2-1);
	start_transfer();
	HAL_SPI_Transmit(spi, (void*)&lcd_buffer[0][0], LCD_X_SIZE*LCD_Y_SIZE, 2);
	end_transfer();

	ili9341_set_address(0,LCD_Y_SIZE/2,LCD_X_SIZE-1,LCD_Y_SIZE-1);
	start_transfer();
	HAL_SPI_Transmit(spi, (void*)&lcd_buffer[LCD_Y_SIZE/2][0], LCD_X_SIZE*LCD_Y_SIZE, 2);
	end_transfer();*/
}

void ili9341_disp_on(void){
	LCD_RST_1;
}

static void reg_init(void){
	//SOFTWARE RESET
	start_transfer();
	write_cmd(0x01);
	end_transfer();
	HAL_Delay(1000);

start_transfer();
  write_cmd(0xEF);
  write_data(0x03);
  write_data(0x80);
  write_data(0x02);

	//POWER CONTROL A
	write_cmd(0xCB);
	write_data(0x39);
	write_data(0x2C);
	write_data(0x00);
	write_data(0x34);
	write_data(0x02);

	//POWER CONTROL B
	write_cmd(0xCF);
	write_data(0x00);
	write_data(0xC1);
	write_data(0x30);

	//DRIVER TIMING CONTROL A
	write_cmd(0xE8);
	write_data(0x85);
	write_data(0x00);
	write_data(0x78);

	//DRIVER TIMING CONTROL B
	write_cmd(0xEA);
	write_data(0x00);
	write_data(0x00);

	//POWER ON SEQUENCE CONTROL
	write_cmd(0xED);
	write_data(0x64);
	write_data(0x03);
	write_data(0x12);
	write_data(0x81);

	//PUMP RATIO CONTROL
	write_cmd(0xF7);
	write_data(0x20);

	//POWER CONTROL,VRH[5:0]
	write_cmd(0xC0);
	write_data(0x23);

	//POWER CONTROL,SAP[2:0];BT[3:0]
	write_cmd(0xC1);
	write_data(0x10);

	//VCM CONTROL
	write_cmd(0xC5);
	write_data(0x3E);
	write_data(0x28);

	//VCM CONTROL 2
	write_cmd(0xC7);
	write_data(0x86);

	//MEMORY ACCESS CONTROL
	write_cmd(0x36);
	write_data(0x48);

	//PIXEL FORMAT
	write_cmd(0x3A);
	write_data(0x55);

	//FRAME RATIO CONTROL, STANDARD RGB COLOR
	write_cmd(0xB1);
	write_data(0x00);
	write_data(0x18);

	//DISPLAY FUNCTION CONTROL
	write_cmd(0xB6);
	write_data(0x08);
	write_data(0x82);
	write_data(0x27);

	//3GAMMA FUNCTION DISABLE
	write_cmd(0xF2);
	write_data(0x00);

	//GAMMA CURVE SELECTED
	write_cmd(0x26);
	write_data(0x01);

	//POSITIVE GAMMA CORRECTION
	write_cmd(0xE0);
	write_data(0x0F);
	write_data(0x31);
	write_data(0x2B);
	write_data(0x0C);
	write_data(0x0E);
	write_data(0x08);
	write_data(0x4E);
	write_data(0xF1);
	write_data(0x37);
	write_data(0x07);
	write_data(0x10);
	write_data(0x03);
	write_data(0x0E);
	write_data(0x09);
	write_data(0x00);

	//NEGATIVE GAMMA CORRECTION
	write_cmd(0xE1);
	write_data(0x00);
	write_data(0x0E);
	write_data(0x14);
	write_data(0x03);
	write_data(0x11);
	write_data(0x07);
	write_data(0x31);
	write_data(0xC1);
	write_data(0x48);
	write_data(0x08);
	write_data(0x0F);
	write_data(0x0C);
	write_data(0x31);
	write_data(0x36);
	write_data(0x0F);

	//EXIT SLEEP
	write_cmd(0x11);
	HAL_Delay(120);

	//TURN ON DISPLAY
	write_cmd(0x29);
	HAL_Delay(120);
	end_transfer();


	//STARTING ROTATION
	//ili9341_rotation(ILI9341_VERTICAL_2); //read looking from the right side
	ili9341_rotation(ILI9341_HORIZONTAL_2); //read looking from the lower side

}



int ili9341_init
	(SPI_HandleTypeDef* pSpi, DMA_HandleTypeDef* pDma,
	GPIO_TypeDef *pGpio_CS, uint32_t pPin_CS,
	GPIO_TypeDef *pGpio_DC, uint32_t pPin_DC,
	GPIO_TypeDef *pGpio_RST, uint32_t pPin_RST)
{
	spi = pSpi;
	dma = pDma;
	gpio_CS = pGpio_CS;
	gpio_DC = pGpio_DC;
	gpio_RST = pGpio_RST;
	pin_CS = pPin_CS;
	pin_DC = pPin_DC;
	pin_RST = pPin_RST;


	ili9341_disp_on();
	ili9341_reset();
	reg_init();

	HAL_Delay(1);

	memset((void*)lcd_buffer,0xFF,sizeof(lcd_buffer));
	ili9341_update();
	HAL_Delay(1);
	//memset(lcd_shadow,0xF181,sizeof(lcd_shadow));
	for(int x = 0; x < LCD_X_SIZE; x++){
		for(int y = 0; y < LCD_Y_SIZE; y++){
			lcd_buffer[y][x] = 0x03;
		}
	}
	ili9341_update();


	return 0;
}

