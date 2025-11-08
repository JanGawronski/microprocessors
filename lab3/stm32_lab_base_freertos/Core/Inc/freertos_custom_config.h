/*
 * freertos_custom_config.h
 *
 *  Created on: Oct 23, 2025
 *      Author: ada
 */

#ifndef INC_FREERTOS_CUSTOM_CONFIG_H_
#define INC_FREERTOS_CUSTOM_CONFIG_H_

#include "probe.h"

//uint32_t id = pxCurrentTCB->uxTCBNumber;
//if(pxCurrentTCB->uxTCBNumber == 0) id = 0; else id = pxCurrentTCB->uxTaskNumber;
#define INCLUDE_xTaskGetIdleTaskHandle 1

#define traceTASK_SWITCHED_IN() { \
  uint32_t id;  \
  id = pxCurrentTCB->uxTaskNumber; \
  probe_output_set(id,1); \
}

#define traceTASK_SWITCHED_OUT() { \
  uint32_t id;  \
  id = pxCurrentTCB->uxTaskNumber; \
  probe_output_set(id,0); \
}


#endif /* INC_FREERTOS_CUSTOM_CONFIG_H_ */
