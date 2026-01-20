/*
 * us_delay.h
 *
 *  Created on: Dec 31, 2025
 *      Author: Ada Locriana
 */

#ifndef INC_US_DELAY_H_
#define INC_US_DELAY_H_

int usdelay_Init(TIM_HandleTypeDef* pTim);
void usdelay(uint16_t us);


#endif /* INC_US_DELAY_H_ */
