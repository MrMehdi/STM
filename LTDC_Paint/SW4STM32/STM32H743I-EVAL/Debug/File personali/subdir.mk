################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../File\ personali/funzioni_disegno.c \
../File\ personali/funzioni_pulsanti.c \
../File\ personali/funzioni_slider.c 

OBJS += \
./File\ personali/funzioni_disegno.o \
./File\ personali/funzioni_pulsanti.o \
./File\ personali/funzioni_slider.o 

C_DEPS += \
./File\ personali/funzioni_disegno.d \
./File\ personali/funzioni_pulsanti.d \
./File\ personali/funzioni_slider.d 


# Each subdirectory must supply rules for building sources it contributes
File\ personali/funzioni_disegno.o: ../File\ personali/funzioni_disegno.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"File personali/funzioni_disegno.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
File\ personali/funzioni_pulsanti.o: ../File\ personali/funzioni_pulsanti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"File personali/funzioni_pulsanti.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
File\ personali/funzioni_slider.o: ../File\ personali/funzioni_slider.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"File personali/funzioni_slider.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

