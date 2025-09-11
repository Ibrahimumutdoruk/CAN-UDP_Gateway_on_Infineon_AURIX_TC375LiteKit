################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.c \
../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.c 

C_DEPS += \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.d \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.d 

OBJS += \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.o \
./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/netif/ppp/polarssl/%.o: ../Libraries/Ethernet/lwip/src/netif/ppp/polarssl/%.c Libraries/Ethernet/lwip/src/netif/ppp/polarssl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif-2f-ppp-2f-polarssl

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif-2f-ppp-2f-polarssl:
	-$(RM) ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.d ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/arc4.o ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.d ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/des.o ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.d ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md4.o ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.d ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/md5.o ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.d ./Libraries/Ethernet/lwip/src/netif/ppp/polarssl/sha1.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif-2f-ppp-2f-polarssl

