/*
 * probe.c
 *
 *  Created on: Oct 23, 2025
 *      Author: ada
 */
#include "main.h"
#include "probe.h"

void probe_output_init(void){
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /*Configure GPIO probe pins */
  GPIO_InitStruct.Pin = PROBE_CH0_PIN;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(PROBE_CH0_GPIO, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = PROBE_CH1_PIN;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(PROBE_CH1_GPIO, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = PROBE_CH2_PIN;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(PROBE_CH2_GPIO, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = PROBE_CH3_PIN;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(PROBE_CH3_GPIO, &GPIO_InitStruct);
}

void probe_output_clear_all(void){
  PROBE_CH0_L;
  PROBE_CH1_L;
  PROBE_CH2_L;
  PROBE_CH3_L;

}

//state can be 0 for L or nonzero for H
//idx can be from 0 to 3
void probe_output_set(int idx, uint8_t state){
  switch(idx){
    case 0:
      if(state) PROBE_CH0_H; else PROBE_CH0_L;
      break;
    case 1:
      if(state) PROBE_CH1_H; else PROBE_CH1_L;
      break;
    case 2:
      if(state) PROBE_CH2_H; else PROBE_CH2_L;
      break;
    case 3:
      if(state) PROBE_CH3_H; else PROBE_CH3_L;
      break;
  }
}
