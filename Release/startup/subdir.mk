################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32.s 

C_SRCS += \
../startup/sysmem.c 

OBJS += \
./startup/startup_stm32.o \
./startup/sysmem.o 

C_DEPS += \
./startup/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup/%.o: ../startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32 -DUSE_STDPERIPH_DRIVER -DSTM32F0 -DSTM32F031F6Px -I"/Users/daymoon/Documents/workspace/DigitalBit/inc" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/CMSIS/Device/ST/STM32F0xx/Include" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/CMSIS/Include" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/STM32F0xx_CPAL_Driver/inc" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/STM32F0xx_StdPeriph_Driver/inc" -Os -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


