/*
 * us_delay.c
 *
 *  Created on: Dec 31, 2025
 *      Author: Ada Locriana
 */


#include "main.h"
#include "cmsis_os.h"

/* USER CODE BEGIN Includes */
//#include "board.h"
#include "dbgu.h"
#include "ansi.h"
#include "term_io.h"
#include "us_delay.h"

static TIM_HandleTypeDef* usTim;

#define GET_CLK_FREQ    HAL_RCC_GetPCLK1Freq

//offset in us to reduce the setup-exit overhead
//determines minimum possible delay
#define OFFSET_US     3

int usdelay_Init(TIM_HandleTypeDef* pTim)
{
  uint32_t pclk_freq = GET_CLK_FREQ();

  #if (defined STM32F103xB)
    pclk_freq = pclk_freq * 2;
  #endif

  uint32_t prescaler = 2*pclk_freq/1000000;

  xprintf("usdelay_Init, pclk_freq = %d , prescaler = %d\n",(int)pclk_freq,(int)prescaler);
    usTim = pTim;
  usTim->Init.Prescaler = prescaler;
  usTim->Init.CounterMode = TIM_COUNTERMODE_UP;
  usTim->Init.Period = 1000;
  usTim->Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(usTim) != HAL_OK)
  {
    xprintf(ANSI_FG_RED "usdelay_Init: HAL_TIM_Base_Init FAILED\n" ANSI_FG_DEFAULT);
  }
  else
  {
    //xprintf("usdelay_Init: timer init OK\n");
  }

//  __HAL_TIM_SET_PRESCALER(tim,prescaler);

  __HAL_TIM_CLEAR_FLAG(usTim,TIM_FLAG_UPDATE);

  return 0;
}


void usdelay(uint16_t us)
{
  __HAL_TIM_SET_COUNTER(usTim,0);
  __HAL_TIM_SET_AUTORELOAD(usTim,us-OFFSET_US);
  __HAL_TIM_CLEAR_FLAG(usTim,TIM_FLAG_UPDATE);

  __HAL_TIM_ENABLE(usTim);

  while( !__HAL_TIM_GET_FLAG(usTim,TIM_FLAG_UPDATE));

  __HAL_TIM_DISABLE(usTim);
}

