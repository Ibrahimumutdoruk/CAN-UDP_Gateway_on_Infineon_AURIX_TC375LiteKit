################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ethip6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/icmp6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/inet6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ip6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.c \
../Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.c \
../Libraries/Ethernet/lwip/src/core/ipv6/mld6.c \
../Libraries/Ethernet/lwip/src/core/ipv6/nd6.c 

C_DEPS += \
./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/inet6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.d \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.d \
./Libraries/Ethernet/lwip/src/core/ipv6/mld6.d \
./Libraries/Ethernet/lwip/src/core/ipv6/nd6.d 

OBJS += \
./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/inet6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.o \
./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.o \
./Libraries/Ethernet/lwip/src/core/ipv6/mld6.o \
./Libraries/Ethernet/lwip/src/core/ipv6/nd6.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/core/ipv6/%.o: ../Libraries/Ethernet/lwip/src/core/ipv6/%.c Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv6

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv6:
	-$(RM) ./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.d ./Libraries/Ethernet/lwip/src/core/ipv6/dhcp6.o ./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.d ./Libraries/Ethernet/lwip/src/core/ipv6/ethip6.o ./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.d ./Libraries/Ethernet/lwip/src/core/ipv6/icmp6.o ./Libraries/Ethernet/lwip/src/core/ipv6/inet6.d ./Libraries/Ethernet/lwip/src/core/ipv6/inet6.o ./Libraries/Ethernet/lwip/src/core/ipv6/ip6.d ./Libraries/Ethernet/lwip/src/core/ipv6/ip6.o ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.d ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_addr.o ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.d ./Libraries/Ethernet/lwip/src/core/ipv6/ip6_frag.o ./Libraries/Ethernet/lwip/src/core/ipv6/mld6.d ./Libraries/Ethernet/lwip/src/core/ipv6/mld6.o ./Libraries/Ethernet/lwip/src/core/ipv6/nd6.d ./Libraries/Ethernet/lwip/src/core/ipv6/nd6.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core-2f-ipv6

