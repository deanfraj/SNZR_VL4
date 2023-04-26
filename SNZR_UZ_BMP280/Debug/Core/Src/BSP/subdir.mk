################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/BSP/bmp280.c 

OBJS += \
./Core/Src/BSP/bmp280.o 

C_DEPS += \
./Core/Src/BSP/bmp280.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/BSP/%.o Core/Src/BSP/%.su Core/Src/BSP/%.cyclo: ../Core/Src/BSP/%.c Core/Src/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-BSP

clean-Core-2f-Src-2f-BSP:
	-$(RM) ./Core/Src/BSP/bmp280.cyclo ./Core/Src/BSP/bmp280.d ./Core/Src/BSP/bmp280.o ./Core/Src/BSP/bmp280.su

.PHONY: clean-Core-2f-Src-2f-BSP

