################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lcd/ili9341.c \
../Core/Src/lcd/lcd.c \
../Core/Src/lcd/lcd_chr.c \
../Core/Src/lcd/lcd_grid.c \
../Core/Src/lcd/lcd_plot.c 

OBJS += \
./Core/Src/lcd/ili9341.o \
./Core/Src/lcd/lcd.o \
./Core/Src/lcd/lcd_chr.o \
./Core/Src/lcd/lcd_grid.o \
./Core/Src/lcd/lcd_plot.o 

C_DEPS += \
./Core/Src/lcd/ili9341.d \
./Core/Src/lcd/lcd.d \
./Core/Src/lcd/lcd_chr.d \
./Core/Src/lcd/lcd_grid.d \
./Core/Src/lcd/lcd_plot.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lcd/%.o Core/Src/lcd/%.su Core/Src/lcd/%.cyclo: ../Core/Src/lcd/%.c Core/Src/lcd/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lcd

clean-Core-2f-Src-2f-lcd:
	-$(RM) ./Core/Src/lcd/ili9341.cyclo ./Core/Src/lcd/ili9341.d ./Core/Src/lcd/ili9341.o ./Core/Src/lcd/ili9341.su ./Core/Src/lcd/lcd.cyclo ./Core/Src/lcd/lcd.d ./Core/Src/lcd/lcd.o ./Core/Src/lcd/lcd.su ./Core/Src/lcd/lcd_chr.cyclo ./Core/Src/lcd/lcd_chr.d ./Core/Src/lcd/lcd_chr.o ./Core/Src/lcd/lcd_chr.su ./Core/Src/lcd/lcd_grid.cyclo ./Core/Src/lcd/lcd_grid.d ./Core/Src/lcd/lcd_grid.o ./Core/Src/lcd/lcd_grid.su ./Core/Src/lcd/lcd_plot.cyclo ./Core/Src/lcd/lcd_plot.d ./Core/Src/lcd/lcd_plot.o ./Core/Src/lcd/lcd_plot.su

.PHONY: clean-Core-2f-Src-2f-lcd

