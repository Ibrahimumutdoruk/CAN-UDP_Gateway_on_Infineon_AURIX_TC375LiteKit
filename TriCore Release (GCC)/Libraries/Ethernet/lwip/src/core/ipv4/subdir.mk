################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/core/ipv4/autoip.c \
../Libraries/Ethernet/lwip/src/core/ipv4/dhcp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/etharp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/icmp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/igmp.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.c \
../Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.c 

C_DEPS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.d \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.d \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.d 

OBJS += \
./Libraries/Ethernet/lwip/src/core/ipv4/autoip.o \
./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/etharp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/icmp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/igmp.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.o \
./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/core/ipv4/%.o: ../Libraries/Ethernet/lwip/src/core/ipv4/%.c Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv4

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv4:
	-$(RM) ./Libraries/Ethernet/lwip/src/core/ipv4/autoip.d ./Libraries/Ethernet/lwip/src/core/ipv4/autoip.o ./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.d ./Libraries/Ethernet/lwip/src/core/ipv4/dhcp.o ./Libraries/Ethernet/lwip/src/core/ipv4/etharp.d ./Libraries/Ethernet/lwip/src/core/ipv4/etharp.o ./Libraries/Ethernet/lwip/src/core/ipv4/icmp.d ./Libraries/Ethernet/lwip/src/core/ipv4/icmp.o ./Libraries/Ethernet/lwip/src/core/ipv4/igmp.d ./Libraries/Ethernet/lwip/src/core/ipv4/igmp.o ./Libraries/Ethernet/lwip/src/core/ipv4/ip4.d ./Libraries/Ethernet/lwip/src/core/ipv4/ip4.o ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.d ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_addr.o ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.d ./Libraries/Ethernet/lwip/src/core/ipv4/ip4_frag.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv4

