################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../File\ Personali/funzioni_personali_disegno.c 

OBJS += \
./File\ Personali/funzioni_personali_disegno.o 

C_DEPS += \
./File\ Personali/funzioni_personali_disegno.d 


# Each subdirectory must supply rules for building sources it contributes
File\ Personali/funzioni_personali_disegno.o: ../File\ Personali/funzioni_personali_disegno.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H743xx -DUSE_STM32H743I_EVAL -DUSE_IOEXPANDER -c -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Utilities/lcd -I../../../Middlewares/ST/STemWin/inc -I../../../Core/Inc -I../../../STemWin/Target -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/SW4STM32/STM32H743I_EVAL/File Personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"File Personali/funzioni_personali_disegno.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
