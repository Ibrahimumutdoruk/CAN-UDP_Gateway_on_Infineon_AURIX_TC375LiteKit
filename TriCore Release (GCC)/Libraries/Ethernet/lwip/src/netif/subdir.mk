################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/netif/bridgeif.c \
../Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.c \
../Libraries/Ethernet/lwip/src/netif/ethernet.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6_ble.c \
../Libraries/Ethernet/lwip/src/netif/lowpan6_common.c \
../Libraries/Ethernet/lwip/src/netif/zepif.c 

C_DEPS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.d \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.d \
./Libraries/Ethernet/lwip/src/netif/ethernet.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.d \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.d \
./Libraries/Ethernet/lwip/src/netif/zepif.d 

OBJS += \
./Libraries/Ethernet/lwip/src/netif/bridgeif.o \
./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.o \
./Libraries/Ethernet/lwip/src/netif/ethernet.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.o \
./Libraries/Ethernet/lwip/src/netif/lowpan6_common.o \
./Libraries/Ethernet/lwip/src/netif/zepif.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/netif/%.o: ../Libraries/Ethernet/lwip/src/netif/%.c Libraries/Ethernet/lwip/src/netif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif:
	-$(RM) ./Libraries/Ethernet/lwip/src/netif/bridgeif.d ./Libraries/Ethernet/lwip/src/netif/bridgeif.o ./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.d ./Libraries/Ethernet/lwip/src/netif/bridgeif_fdb.o ./Libraries/Ethernet/lwip/src/netif/ethernet.d ./Libraries/Ethernet/lwip/src/netif/ethernet.o ./Libraries/Ethernet/lwip/src/netif/lowpan6.d ./Libraries/Ethernet/lwip/src/netif/lowpan6.o ./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.d ./Libraries/Ethernet/lwip/src/netif/lowpan6_ble.o ./Libraries/Ethernet/lwip/src/netif/lowpan6_common.d ./Libraries/Ethernet/lwip/src/netif/lowpan6_common.o ./Libraries/Ethernet/lwip/src/netif/zepif.d ./Libraries/Ethernet/lwip/src/netif/zepif.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif

