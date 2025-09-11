################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/core/altcp.c \
../Libraries/Ethernet/lwip/src/core/altcp_alloc.c \
../Libraries/Ethernet/lwip/src/core/altcp_tcp.c \
../Libraries/Ethernet/lwip/src/core/def.c \
../Libraries/Ethernet/lwip/src/core/dns.c \
../Libraries/Ethernet/lwip/src/core/inet_chksum.c \
../Libraries/Ethernet/lwip/src/core/init.c \
../Libraries/Ethernet/lwip/src/core/ip.c \
../Libraries/Ethernet/lwip/src/core/mem.c \
../Libraries/Ethernet/lwip/src/core/memp.c \
../Libraries/Ethernet/lwip/src/core/netif.c \
../Libraries/Ethernet/lwip/src/core/pbuf.c \
../Libraries/Ethernet/lwip/src/core/raw.c \
../Libraries/Ethernet/lwip/src/core/stats.c \
../Libraries/Ethernet/lwip/src/core/sys.c \
../Libraries/Ethernet/lwip/src/core/tcp.c \
../Libraries/Ethernet/lwip/src/core/tcp_in.c \
../Libraries/Ethernet/lwip/src/core/tcp_out.c \
../Libraries/Ethernet/lwip/src/core/timeouts.c \
../Libraries/Ethernet/lwip/src/core/udp.c 

C_DEPS += \
./Libraries/Ethernet/lwip/src/core/altcp.d \
./Libraries/Ethernet/lwip/src/core/altcp_alloc.d \
./Libraries/Ethernet/lwip/src/core/altcp_tcp.d \
./Libraries/Ethernet/lwip/src/core/def.d \
./Libraries/Ethernet/lwip/src/core/dns.d \
./Libraries/Ethernet/lwip/src/core/inet_chksum.d \
./Libraries/Ethernet/lwip/src/core/init.d \
./Libraries/Ethernet/lwip/src/core/ip.d \
./Libraries/Ethernet/lwip/src/core/mem.d \
./Libraries/Ethernet/lwip/src/core/memp.d \
./Libraries/Ethernet/lwip/src/core/netif.d \
./Libraries/Ethernet/lwip/src/core/pbuf.d \
./Libraries/Ethernet/lwip/src/core/raw.d \
./Libraries/Ethernet/lwip/src/core/stats.d \
./Libraries/Ethernet/lwip/src/core/sys.d \
./Libraries/Ethernet/lwip/src/core/tcp.d \
./Libraries/Ethernet/lwip/src/core/tcp_in.d \
./Libraries/Ethernet/lwip/src/core/tcp_out.d \
./Libraries/Ethernet/lwip/src/core/timeouts.d \
./Libraries/Ethernet/lwip/src/core/udp.d 

OBJS += \
./Libraries/Ethernet/lwip/src/core/altcp.o \
./Libraries/Ethernet/lwip/src/core/altcp_alloc.o \
./Libraries/Ethernet/lwip/src/core/altcp_tcp.o \
./Libraries/Ethernet/lwip/src/core/def.o \
./Libraries/Ethernet/lwip/src/core/dns.o \
./Libraries/Ethernet/lwip/src/core/inet_chksum.o \
./Libraries/Ethernet/lwip/src/core/init.o \
./Libraries/Ethernet/lwip/src/core/ip.o \
./Libraries/Ethernet/lwip/src/core/mem.o \
./Libraries/Ethernet/lwip/src/core/memp.o \
./Libraries/Ethernet/lwip/src/core/netif.o \
./Libraries/Ethernet/lwip/src/core/pbuf.o \
./Libraries/Ethernet/lwip/src/core/raw.o \
./Libraries/Ethernet/lwip/src/core/stats.o \
./Libraries/Ethernet/lwip/src/core/sys.o \
./Libraries/Ethernet/lwip/src/core/tcp.o \
./Libraries/Ethernet/lwip/src/core/tcp_in.o \
./Libraries/Ethernet/lwip/src/core/tcp_out.o \
./Libraries/Ethernet/lwip/src/core/timeouts.o \
./Libraries/Ethernet/lwip/src/core/udp.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/core/%.o: ../Libraries/Ethernet/lwip/src/core/%.c Libraries/Ethernet/lwip/src/core/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core:
	-$(RM) ./Libraries/Ethernet/lwip/src/core/altcp.d ./Libraries/Ethernet/lwip/src/core/altcp.o ./Libraries/Ethernet/lwip/src/core/altcp_alloc.d ./Libraries/Ethernet/lwip/src/core/altcp_alloc.o ./Libraries/Ethernet/lwip/src/core/altcp_tcp.d ./Libraries/Ethernet/lwip/src/core/altcp_tcp.o ./Libraries/Ethernet/lwip/src/core/def.d ./Libraries/Ethernet/lwip/src/core/def.o ./Libraries/Ethernet/lwip/src/core/dns.d ./Libraries/Ethernet/lwip/src/core/dns.o ./Libraries/Ethernet/lwip/src/core/inet_chksum.d ./Libraries/Ethernet/lwip/src/core/inet_chksum.o ./Libraries/Ethernet/lwip/src/core/init.d ./Libraries/Ethernet/lwip/src/core/init.o ./Libraries/Ethernet/lwip/src/core/ip.d ./Libraries/Ethernet/lwip/src/core/ip.o ./Libraries/Ethernet/lwip/src/core/mem.d ./Libraries/Ethernet/lwip/src/core/mem.o ./Libraries/Ethernet/lwip/src/core/memp.d ./Libraries/Ethernet/lwip/src/core/memp.o ./Libraries/Ethernet/lwip/src/core/netif.d ./Libraries/Ethernet/lwip/src/core/netif.o ./Libraries/Ethernet/lwip/src/core/pbuf.d ./Libraries/Ethernet/lwip/src/core/pbuf.o ./Libraries/Ethernet/lwip/src/core/raw.d ./Libraries/Ethernet/lwip/src/core/raw.o ./Libraries/Ethernet/lwip/src/core/stats.d ./Libraries/Ethernet/lwip/src/core/stats.o ./Libraries/Ethernet/lwip/src/core/sys.d ./Libraries/Ethernet/lwip/src/core/sys.o ./Libraries/Ethernet/lwip/src/core/tcp.d ./Libraries/Ethernet/lwip/src/core/tcp.o ./Libraries/Ethernet/lwip/src/core/tcp_in.d ./Libraries/Ethernet/lwip/src/core/tcp_in.o ./Libraries/Ethernet/lwip/src/core/tcp_out.d ./Libraries/Ethernet/lwip/src/core/tcp_out.o ./Libraries/Ethernet/lwip/src/core/timeouts.d ./Libraries/Ethernet/lwip/src/core/timeouts.o ./Libraries/Ethernet/lwip/src/core/udp.d ./Libraries/Ethernet/lwip/src/core/udp.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-core

