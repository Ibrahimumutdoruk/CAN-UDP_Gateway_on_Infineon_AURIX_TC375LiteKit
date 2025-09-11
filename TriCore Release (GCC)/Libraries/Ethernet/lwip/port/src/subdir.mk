################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/port/src/Ifx_Lwip.c \
../Libraries/Ethernet/lwip/port/src/netif.c 

C_DEPS += \
./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.d \
./Libraries/Ethernet/lwip/port/src/netif.d 

OBJS += \
./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.o \
./Libraries/Ethernet/lwip/port/src/netif.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/port/src/%.o: ../Libraries/Ethernet/lwip/port/src/%.c Libraries/Ethernet/lwip/port/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-port-2f-src

clean-Libraries-2f-Ethernet-2f-lwip-2f-port-2f-src:
	-$(RM) ./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.d ./Libraries/Ethernet/lwip/port/src/Ifx_Lwip.o ./Libraries/Ethernet/lwip/port/src/netif.d ./Libraries/Ethernet/lwip/port/src/netif.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-port-2f-src

