################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/delay.c \
../src/leds.c \
../src/main.c \
../src/powerbit.c \
../src/scheduler.c \
../src/services.c \
../src/stm32f0xx_it.c \
../src/system_stm32f0xx.c 

OBJS += \
./src/delay.o \
./src/leds.o \
./src/main.o \
./src/powerbit.o \
./src/scheduler.o \
./src/services.o \
./src/stm32f0xx_it.o \
./src/system_stm32f0xx.o 

C_DEPS += \
./src/delay.d \
./src/leds.d \
./src/main.d \
./src/powerbit.d \
./src/scheduler.d \
./src/services.d \
./src/stm32f0xx_it.d \
./src/system_stm32f0xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32 -DUSE_STDPERIPH_DRIVER -DSTM32F0 -DSTM32F031F6Px -I"/Users/daymoon/Documents/workspace/DigitalBit/inc" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/CMSIS/Device/ST/STM32F0xx/Include" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/CMSIS/Include" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/STM32F0xx_CPAL_Driver/inc" -I"/Users/daymoon/Documents/workspace/stm32f0_stdperiph_lib/Libraries/STM32F0xx_StdPeriph_Driver/inc" -Os -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


