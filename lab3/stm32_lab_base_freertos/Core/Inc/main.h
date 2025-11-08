/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "dbgu.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define USER_Btn_Pin GPIO_PIN_13
#define USER_Btn_GPIO_Port GPIOC
#define SW2_Pin GPIO_PIN_3
#define SW2_GPIO_Port GPIOF
#define SW3_Pin GPIO_PIN_5
#define SW3_GPIO_Port GPIOF
#define AIN_Pin GPIO_PIN_10
#define AIN_GPIO_Port GPIOF
#define MCO_Pin GPIO_PIN_0
#define MCO_GPIO_Port GPIOH
#define ONEWIRE_Pin GPIO_PIN_0
#define ONEWIRE_GPIO_Port GPIOC
#define RMII_MDC_Pin GPIO_PIN_1
#define RMII_MDC_GPIO_Port GPIOC
#define SW1_Pin GPIO_PIN_3
#define SW1_GPIO_Port GPIOC
#define RMII_REF_CLK_Pin GPIO_PIN_1
#define RMII_REF_CLK_GPIO_Port GPIOA
#define RMII_MDIO_Pin GPIO_PIN_2
#define RMII_MDIO_GPIO_Port GPIOA
#define ENC_A_Pin GPIO_PIN_3
#define ENC_A_GPIO_Port GPIOA
#define LCD_CLK_Pin GPIO_PIN_5
#define LCD_CLK_GPIO_Port GPIOA
#define LCD_SDO_Pin GPIO_PIN_6
#define LCD_SDO_GPIO_Port GPIOA
#define LCD_DIN_Pin GPIO_PIN_7
#define LCD_DIN_GPIO_Port GPIOA
#define RMII_RXD0_Pin GPIO_PIN_4
#define RMII_RXD0_GPIO_Port GPIOC
#define RMII_RXD1_Pin GPIO_PIN_5
#define RMII_RXD1_GPIO_Port GPIOC
#define LD1_Pin GPIO_PIN_0
#define LD1_GPIO_Port GPIOB
#define GPIO_INV_Pin GPIO_PIN_12
#define GPIO_INV_GPIO_Port GPIOF
#define LCD_DC_Pin GPIO_PIN_13
#define LCD_DC_GPIO_Port GPIOF
#define ENC_B_Pin GPIO_PIN_14
#define ENC_B_GPIO_Port GPIOF
#define GPIO_B_Pin GPIO_PIN_15
#define GPIO_B_GPIO_Port GPIOF
#define LCD_RST_Pin GPIO_PIN_9
#define LCD_RST_GPIO_Port GPIOE
#define WS2812B_Pin GPIO_PIN_11
#define WS2812B_GPIO_Port GPIOE
#define GPIO_A_Pin GPIO_PIN_13
#define GPIO_A_GPIO_Port GPIOE
#define RMII_TXD1_Pin GPIO_PIN_13
#define RMII_TXD1_GPIO_Port GPIOB
#define LD3_Pin GPIO_PIN_14
#define LD3_GPIO_Port GPIOB
#define STLK_RX_Pin GPIO_PIN_8
#define STLK_RX_GPIO_Port GPIOD
#define STLK_TX_Pin GPIO_PIN_9
#define STLK_TX_GPIO_Port GPIOD
#define LCD_CS_Pin GPIO_PIN_14
#define LCD_CS_GPIO_Port GPIOD
#define LCD_BL_Pin GPIO_PIN_15
#define LCD_BL_GPIO_Port GPIOD
#define USB_PowerSwitchOn_Pin GPIO_PIN_6
#define USB_PowerSwitchOn_GPIO_Port GPIOG
#define USB_OverCurrent_Pin GPIO_PIN_7
#define USB_OverCurrent_GPIO_Port GPIOG
#define USB_SOF_Pin GPIO_PIN_8
#define USB_SOF_GPIO_Port GPIOA
#define USB_VBUS_Pin GPIO_PIN_9
#define USB_VBUS_GPIO_Port GPIOA
#define USB_ID_Pin GPIO_PIN_10
#define USB_ID_GPIO_Port GPIOA
#define USB_DM_Pin GPIO_PIN_11
#define USB_DM_GPIO_Port GPIOA
#define USB_DP_Pin GPIO_PIN_12
#define USB_DP_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define RX_Pin GPIO_PIN_9
#define RX_GPIO_Port GPIOG
#define RMII_TX_EN_Pin GPIO_PIN_11
#define RMII_TX_EN_GPIO_Port GPIOG
#define RMII_TXD0_Pin GPIO_PIN_13
#define RMII_TXD0_GPIO_Port GPIOG
#define TX_Pin GPIO_PIN_14
#define TX_GPIO_Port GPIOG
#define LD2_Pin GPIO_PIN_7
#define LD2_GPIO_Port GPIOB
#define SCL_Pin GPIO_PIN_8
#define SCL_GPIO_Port GPIOB
#define SDA_Pin GPIO_PIN_9
#define SDA_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

#define LD1_ON      HAL_GPIO_WritePin(LD1_GPIO_Port, LD1_Pin, GPIO_PIN_SET)
#define LD1_OFF     HAL_GPIO_WritePin(LD1_GPIO_Port, LD1_Pin, GPIO_PIN_RESET)
#define LD1_TOGGLE  HAL_GPIO_TogglePin(LD1_GPIO_Port, LD1_Pin)

#define LD2_ON      HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_SET)
#define LD2_OFF     HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET)
#define LD2_TOGGLE  HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin)

#define LD3_ON      HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_SET)
#define LD3_OFF     HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_RESET)
#define LD3_TOGGLE  HAL_GPIO_TogglePin(LD3_GPIO_Port, LD3_Pin)

#define ONBOARD_BTN_PRESSED ( HAL_GPIO_ReadPin(USER_Btn_GPIO_Port,USER_Btn_Pin) == GPIO_PIN_SET )

#define PROBE_CH0_PIN   GPIO_PIN_11
#define PROBE_CH0_GPIO  GPIOE
#define PROBE_CH1_PIN   GPIO_PIN_14
#define PROBE_CH1_GPIO  GPIOF
#define PROBE_CH2_PIN   GPIO_PIN_13
#define PROBE_CH2_GPIO  GPIOE
#define PROBE_CH3_PIN   GPIO_PIN_15
#define PROBE_CH3_GPIO  GPIOF

#define PROBE_CH0_H     HAL_GPIO_WritePin(PROBE_CH0_GPIO, PROBE_CH0_PIN, GPIO_PIN_SET)
#define PROBE_CH0_L     HAL_GPIO_WritePin(PROBE_CH0_GPIO, PROBE_CH0_PIN, GPIO_PIN_RESET)
#define PROBE_CH1_H     HAL_GPIO_WritePin(PROBE_CH1_GPIO, PROBE_CH1_PIN, GPIO_PIN_SET)
#define PROBE_CH1_L     HAL_GPIO_WritePin(PROBE_CH1_GPIO, PROBE_CH1_PIN, GPIO_PIN_RESET)
#define PROBE_CH2_H     HAL_GPIO_WritePin(PROBE_CH2_GPIO, PROBE_CH2_PIN, GPIO_PIN_SET)
#define PROBE_CH2_L     HAL_GPIO_WritePin(PROBE_CH2_GPIO, PROBE_CH2_PIN, GPIO_PIN_RESET)
#define PROBE_CH3_H     HAL_GPIO_WritePin(PROBE_CH3_GPIO, PROBE_CH3_PIN, GPIO_PIN_SET)
#define PROBE_CH3_L     HAL_GPIO_WritePin(PROBE_CH3_GPIO, PROBE_CH3_PIN, GPIO_PIN_RESET)

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
