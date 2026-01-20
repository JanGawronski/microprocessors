################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USB_DEVICE/Class/CDC/Src/usbd_cdc.c 

OBJS += \
./USB_DEVICE/Class/CDC/Src/usbd_cdc.o 

C_DEPS += \
./USB_DEVICE/Class/CDC/Src/usbd_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
USB_DEVICE/Class/CDC/Src/%.o USB_DEVICE/Class/CDC/Src/%.su USB_DEVICE/Class/CDC/Src/%.cyclo: ../USB_DEVICE/Class/CDC/Src/%.c USB_DEVICE/Class/CDC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USB_DEVICE-2f-Class-2f-CDC-2f-Src

clean-USB_DEVICE-2f-Class-2f-CDC-2f-Src:
	-$(RM) ./USB_DEVICE/Class/CDC/Src/usbd_cdc.cyclo ./USB_DEVICE/Class/CDC/Src/usbd_cdc.d ./USB_DEVICE/Class/CDC/Src/usbd_cdc.o ./USB_DEVICE/Class/CDC/Src/usbd_cdc.su

.PHONY: clean-USB_DEVICE-2f-Class-2f-CDC-2f-Src

