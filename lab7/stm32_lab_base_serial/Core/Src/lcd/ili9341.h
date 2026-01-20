/*
 * ili9341.h
 *
 *  Created on: Dec 31, 2025
 *      Author: Ada Locriana
 */


#ifndef __ILI_9341_H__
#define __ILI_9341_H__

#define LCD_VERTICAL 				0


#if LCD_VERTICAL
	#define LCD_X_SIZE  240
	#define LCD_Y_SIZE  320
#else
	#define LCD_X_SIZE  320
	#define LCD_Y_SIZE  240
#endif

#define LCD_COLOR_BLUE          ((uint8_t)0x02)
#define LCD_COLOR_GREEN         ((uint8_t)0x18)
#define LCD_COLOR_RED           ((uint8_t)0xC0)
#define LCD_COLOR_CYAN          ((uint8_t)0x1F)
#define LCD_COLOR_MAGENTA       ((uint8_t)0xE3)
#define LCD_COLOR_YELLOW        ((uint8_t)0xFC)
#define LCD_COLOR_LIGHTBLUE     ((uint8_t)0x03)
#define LCD_COLOR_LIGHTGREEN    ((uint8_t)0x1C)
#define LCD_COLOR_LIGHTRED      ((uint8_t)0xE0)
#define LCD_COLOR_LIGHTCYAN     ((uint8_t)0x1F)
#define LCD_COLOR_LIGHTMAGENTA  ((uint8_t)0xE3)
#define LCD_COLOR_LIGHTYELLOW   ((uint8_t)0xFC)
#define LCD_COLOR_DARKBLUE      ((uint8_t)0x02)
#define LCD_COLOR_DARKGREEN     ((uint8_t)0x14)
#define LCD_COLOR_DARKRED       ((uint8_t)0xA0)
#define LCD_COLOR_DARKCYAN      (LCD_COLOR_DARKBLUE | LCD_COLOR_DARKGREEN)
#define LCD_COLOR_DARKMAGENTA   (LCD_COLOR_DARKBLUE | LCD_COLOR_DARKRED)
#define LCD_COLOR_DARKYELLOW    (LCD_COLOR_DARKGREEN | LCD_COLOR_DARKRED)
#define LCD_COLOR_WHITE         ((uint8_t)0xFF)
#define LCD_COLOR_LIGHTGRAY     ((uint8_t)0x6E)
#define LCD_COLOR_GRAY          ((uint8_t)0x49)
#define LCD_COLOR_DARKGRAY      ((uint8_t)0x25)
#define LCD_COLOR_BLACK         ((uint8_t)0x00)

int ili9341_init
	(SPI_HandleTypeDef* pSpi, DMA_HandleTypeDef* pDma,
	GPIO_TypeDef *pGpio_CS, uint32_t pPin_CS,
	GPIO_TypeDef *pGpio_DC, uint32_t pPin_DC,
	GPIO_TypeDef *pGpio_RST, uint32_t pPin_RST);

uint8_t* ili9341_get_buf_ptr(void);
void ili9341_update();

#endif

