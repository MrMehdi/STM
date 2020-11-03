################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_bus.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_io.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_sdram.c 

OBJS += \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.o 

C_DEPS += \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H743xx -DUSE_STM32H743I_EVAL -DUSE_IOEXPANDER -c -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Utilities/lcd -I../../../Middlewares/ST/STemWin/inc -I../../../Core/Inc -I../../../STemWin/Target -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_bus.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H743xx -DUSE_STM32H743I_EVAL -DUSE_IOEXPANDER -c -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Utilities/lcd -I../../../Middlewares/ST/STemWin/inc -I../../../Core/Inc -I../../../STemWin/Target -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_io.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H743xx -DUSE_STM32H743I_EVAL -DUSE_IOEXPANDER -c -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Utilities/lcd -I../../../Middlewares/ST/STemWin/inc -I../../../Core/Inc -I../../../STemWin/Target -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/STemWin_HelloWorld/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_sdram.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H743xx -DUSE_STM32H743I_EVAL -DUSE_IOEXPANDER -c -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Utilities/lcd -I../../../Middlewares/ST/STemWin/inc -I../../../Core/Inc -I../../../STemWin/Target -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

