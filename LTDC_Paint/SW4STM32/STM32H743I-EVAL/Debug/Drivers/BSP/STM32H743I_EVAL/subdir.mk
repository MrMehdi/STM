################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_bus.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_io.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_lcd.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_sdram.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_ts.c 

OBJS += \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_lcd.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.o \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_ts.o 

C_DEPS += \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_lcd.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.d \
./Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_bus.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_bus.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_io.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_io.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_lcd.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_lcd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_lcd.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_sdram.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_sdram.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_ts.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/STM32H743I-EVAL/stm32h743i_eval_ts.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/STM32H743I_EVAL/stm32h743i_eval_ts.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

