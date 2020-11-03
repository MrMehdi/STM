################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Target/subdir.mk
-include Middlewares/OS/subdir.mk
-include Drivers/STM32H7xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/STM32H743I_EVAL/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Application/User/STemWin/subdir.mk
-include Application/User/Core/subdir.mk
-include Application/SW4STM32/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
STemWin_HelloWorld.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
STemWin_HelloWorld.list \

OBJCOPY_BIN += \
STemWin_HelloWorld.bin \


# All Target
all: STemWin_HelloWorld.elf secondary-outputs

# Tool invocations
STemWin_HelloWorld.elf: $(OBJS) $(USER_OBJS) ../STM32H743XIHx_FLASH.ld
	arm-none-eabi-gcc -o "STemWin_HelloWorld.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"../STM32H743XIHx_FLASH.ld" --specs=nosys.specs -Wl,-Map="STemWin_HelloWorld.map" -Wl,--gc-sections -static -L../../../Middlewares/ST/STemWin/Lib --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

STemWin_HelloWorld.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "STemWin_HelloWorld.list"
	@echo 'Finished building: $@'
	@echo ' '

STemWin_HelloWorld.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "STemWin_HelloWorld.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
