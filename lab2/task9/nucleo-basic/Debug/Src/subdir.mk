################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/dbgu.c \
../Src/ethernetif.c \
../Src/fatfs.c \
../Src/freertos.c \
../Src/lwip.c \
../Src/main.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_hal_timebase_tim.c \
../Src/stm32f4xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32f4xx.c \
../Src/term_io.c \
../Src/usb_host.c \
../Src/usbh_conf.c \
../Src/usbh_diskio.c \
../Src/usbh_platform.c 

OBJS += \
./Src/dbgu.o \
./Src/ethernetif.o \
./Src/fatfs.o \
./Src/freertos.o \
./Src/lwip.o \
./Src/main.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_hal_timebase_tim.o \
./Src/stm32f4xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32f4xx.o \
./Src/term_io.o \
./Src/usb_host.o \
./Src/usbh_conf.o \
./Src/usbh_diskio.o \
./Src/usbh_platform.o 

C_DEPS += \
./Src/dbgu.d \
./Src/ethernetif.d \
./Src/fatfs.d \
./Src/freertos.d \
./Src/lwip.d \
./Src/main.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_hal_timebase_tim.d \
./Src/stm32f4xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32f4xx.d \
./Src/term_io.d \
./Src/usb_host.d \
./Src/usbh_conf.d \
./Src/usbh_diskio.d \
./Src/usbh_platform.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Inc -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/FatFs/src -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/dbgu.cyclo ./Src/dbgu.d ./Src/dbgu.o ./Src/dbgu.su ./Src/ethernetif.cyclo ./Src/ethernetif.d ./Src/ethernetif.o ./Src/ethernetif.su ./Src/fatfs.cyclo ./Src/fatfs.d ./Src/fatfs.o ./Src/fatfs.su ./Src/freertos.cyclo ./Src/freertos.d ./Src/freertos.o ./Src/freertos.su ./Src/lwip.cyclo ./Src/lwip.d ./Src/lwip.o ./Src/lwip.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/stm32f4xx_hal_msp.cyclo ./Src/stm32f4xx_hal_msp.d ./Src/stm32f4xx_hal_msp.o ./Src/stm32f4xx_hal_msp.su ./Src/stm32f4xx_hal_timebase_tim.cyclo ./Src/stm32f4xx_hal_timebase_tim.d ./Src/stm32f4xx_hal_timebase_tim.o ./Src/stm32f4xx_hal_timebase_tim.su ./Src/stm32f4xx_it.cyclo ./Src/stm32f4xx_it.d ./Src/stm32f4xx_it.o ./Src/stm32f4xx_it.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su ./Src/system_stm32f4xx.cyclo ./Src/system_stm32f4xx.d ./Src/system_stm32f4xx.o ./Src/system_stm32f4xx.su ./Src/term_io.cyclo ./Src/term_io.d ./Src/term_io.o ./Src/term_io.su ./Src/usb_host.cyclo ./Src/usb_host.d ./Src/usb_host.o ./Src/usb_host.su ./Src/usbh_conf.cyclo ./Src/usbh_conf.d ./Src/usbh_conf.o ./Src/usbh_conf.su ./Src/usbh_diskio.cyclo ./Src/usbh_diskio.d ./Src/usbh_diskio.o ./Src/usbh_diskio.su ./Src/usbh_platform.cyclo ./Src/usbh_platform.d ./Src/usbh_platform.o ./Src/usbh_platform.su

.PHONY: clean-Src

