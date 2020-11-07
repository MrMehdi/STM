################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/exc7200/exc7200.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/exc7200/exc7200_reg.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/is42s32800g/is42s32800g.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/mfxstm32l152/mfxstm32l152.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/mfxstm32l152/mfxstm32l152_reg.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/stmpe811/stmpe811.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/stmpe811/stmpe811_reg.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/ts3510/ts3510.c \
C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/ts3510/ts3510_reg.c 

OBJS += \
./Drivers/BSP/Components/exc7200.o \
./Drivers/BSP/Components/exc7200_reg.o \
./Drivers/BSP/Components/is42s32800g.o \
./Drivers/BSP/Components/mfxstm32l152.o \
./Drivers/BSP/Components/mfxstm32l152_reg.o \
./Drivers/BSP/Components/stmpe811.o \
./Drivers/BSP/Components/stmpe811_reg.o \
./Drivers/BSP/Components/ts3510.o \
./Drivers/BSP/Components/ts3510_reg.o 

C_DEPS += \
./Drivers/BSP/Components/exc7200.d \
./Drivers/BSP/Components/exc7200_reg.d \
./Drivers/BSP/Components/is42s32800g.d \
./Drivers/BSP/Components/mfxstm32l152.d \
./Drivers/BSP/Components/mfxstm32l152_reg.d \
./Drivers/BSP/Components/stmpe811.d \
./Drivers/BSP/Components/stmpe811_reg.d \
./Drivers/BSP/Components/ts3510.d \
./Drivers/BSP/Components/ts3510_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/exc7200.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/exc7200/exc7200.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/exc7200.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/exc7200_reg.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/exc7200/exc7200_reg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/exc7200_reg.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/is42s32800g.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/is42s32800g/is42s32800g.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/is42s32800g.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/mfxstm32l152.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/mfxstm32l152/mfxstm32l152.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/mfxstm32l152.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/mfxstm32l152_reg.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/mfxstm32l152/mfxstm32l152_reg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/mfxstm32l152_reg.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/stmpe811.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/stmpe811/stmpe811.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/stmpe811.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/stmpe811_reg.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/stmpe811/stmpe811_reg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/stmpe811_reg.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ts3510.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/ts3510/ts3510.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/ts3510.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ts3510_reg.o: C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/Drivers/BSP/Components/ts3510/ts3510_reg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32H743xx -DUSE_HAL_DRIVER -DUSE_USB_HS -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H743I-EVAL -I../../../Utilities/Fonts -I../../../Drivers/BSP/Components/Common -I../../../Utilities -I../../../Utilities/lcd -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Middlewares/Third_Party/FatFs/src -I../../../Drivers/CMSIS/Include -I"C:/Users/Computer/STM32CubeIDE/workspace_1.4.0/LTDC_Paint/SW4STM32/STM32H743I-EVAL/File personali" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/ts3510_reg.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

