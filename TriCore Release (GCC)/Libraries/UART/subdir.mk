################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/UART/UART_Logging.c 

C_DEPS += \
./Libraries/UART/UART_Logging.d 

OBJS += \
./Libraries/UART/UART_Logging.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/UART/%.o: ../Libraries/UART/%.c Libraries/UART/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-UART

clean-Libraries-2f-UART:
	-$(RM) ./Libraries/UART/UART_Logging.d ./Libraries/UART/UART_Logging.o

.PHONY: clean-Libraries-2f-UART

