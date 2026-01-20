/*
 * ws2812b.c
 *
 *  Created on: Jul 27, 2025
 *      Author: Ada Locriana.
 *
 *  Inspired by:
 *  https://controllerstech.com/interface-ws2812-with-stm32/
 *
 *  Works... maybe? Sometimes.
 *  In general it's usable in some degree.
 *  Just tweak it to run it and don't blame me for the mess :P
 *  Needs preferably Timer 1 (the big one).
 *  Other's probably won't work.
 *  It's experimental so don't complain.
 */


#include "main.h"
#include "ws2812b.h"
#include <string.h>

TIM_HandleTypeDef *phtim;
DMA_HandleTypeDef *phdma;
volatile uint32_t tim_active_channel;
int led_nb;
static volatile int busy = 0;
#define RAW_BUF_TRAILING_ZEROS			50
static uint8_t api_data[WS2812B_LED_NB_MAX][4];
static uint16_t out_data[24*WS2812B_LED_NB_MAX + RAW_BUF_TRAILING_ZEROS];
static int brightness = 255;

void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
{
	HAL_TIM_PWM_Stop_DMA(htim, tim_active_channel);
	busy = 0;
	xprintf("done!\n");
}

static uint32_t convert_buffers(void){
	uint32_t out_idx = 0;
	for(int led_idx=0;led_idx<led_nb;led_idx++){
		uint32_t r, g, b, rgb_bitfield;
		g = api_data[led_idx][1];
		r = api_data[led_idx][2];
		b = api_data[led_idx][3];
		/*g = g * brightness / 255;
		r = r * brightness / 255;
		b = b * brightness / 255;*/
		rgb_bitfield = ((g<<16) | (r<<8) | (b));

		for(int i=23;i>=0;i--){
			if(rgb_bitfield & (1<<i)){
				out_data[out_idx] = 134;
			}
			else{
				out_data[out_idx] = 67;
			}
			out_idx++;
		}//for(int i=23;i>=0;i--)
	}//for(int led_idx=0;led_idx<WS2812B_LED_NB_MAX;led_idx++){

	for(int i=0; i<RAW_BUF_TRAILING_ZEROS; i++){
		out_data[out_idx++] = 0;
	}
	return(out_idx);
}

int ws2812b_init(TIM_HandleTypeDef* pTim, DMA_HandleTypeDef* pDma, uint32_t pTim_active_ch, uint8_t pLed_nb){
	if(pLed_nb > WS2812B_LED_NB_MAX){
		xprintf("ws2812b_init: too many LEDs @ init\n");
		return -1;
	}
	phtim = pTim;
	phdma = pDma;
	led_nb = pLed_nb;
	tim_active_channel = pTim_active_ch;
	memset(api_data,0,sizeof(api_data));
	convert_buffers();
	return 0;
}

void ws2812b_set_brightness(uint8_t pBright){
	brightness = pBright;
}

int ws2812b_write(uint8_t idx, uint8_t r, uint8_t g, uint8_t b){
	api_data[idx][0] = idx;
	api_data[idx][1] = g;
	api_data[idx][2] = r;
	api_data[idx][3] = b;
	return 0;
}

int ws2812b_update(void){
	uint32_t total_len = convert_buffers();
	HAL_TIM_PWM_Start_DMA(phtim,tim_active_channel,(const uint32_t *)out_data,total_len);
	busy = 1;
	return 0;
}

