/*
 * ws2812b.h
 *
 *  Created on: Jul 27, 2025
 *      Author: Ada Locriana
 */

#ifndef INC_WS2812B_H_
#define INC_WS2812B_H_

#define WS2812B_LED_NB_MAX		26


int ws2812b_init(TIM_HandleTypeDef* pTim, DMA_HandleTypeDef* pDma, uint32_t pTim_active_ch, uint8_t pLed_nb);
int ws2812b_write(uint8_t idx, uint8_t r, uint8_t g, uint8_t b);
int ws2812b_update(void);
void ws2812b_set_brightness(uint8_t pBright);


#endif /* INC_WS2812B_H_ */
