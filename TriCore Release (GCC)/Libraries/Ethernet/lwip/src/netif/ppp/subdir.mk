################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/netif/ppp/auth.c \
../Libraries/Ethernet/lwip/src/netif/ppp/ccp.c \
../Libraries/Ethernet/lwip/src/netif/ppp/chap-md5.c \
../Libraries/Ethernet/lwip/src/netif/ppp/chap-new.c \
../Libraries/Ethernet/lwip/src/netif/ppp/chap_ms.c \
../Libraries/Ethernet/lwip/src/netif/ppp/demand.c \
../Libraries/Ethernet/lwip/src/netif/ppp/eap.c \
../Libraries/Ethernet/lwip/src/netif/ppp/ecp.c \
../Libraries/Ethernet/lwip/src/netif/ppp/eui64.c \
../Libraries/Ethernet/lwip/src/netif/ppp/fsm.c \
../Libraries/Ethernet/lwip/src/netif/ppp/ipcp.c \
../Libraries/Ethernet/lwip/src/netif/ppp/ipv6cp.c \
../Libraries/Ethernet/lwip/src/netif/ppp/lcp.c \
../Libraries/Ethernet/lwip/src/netif/ppp/magic.c \
../Libraries/Ethernet/lwip/src/netif/ppp/mppe.c \
../Libraries/Ethernet/lwip/src/netif/ppp/multilink.c \
../Libraries/Ethernet/lwip/src/netif/ppp/ppp.c \
../Libraries/Ethernet/lwip/src/netif/ppp/pppapi.c \
../Libraries/Ethernet/lwip/src/netif/ppp/pppcrypt.c \
../Libraries/Ethernet/lwip/src/netif/ppp/pppoe.c \
../Libraries/Ethernet/lwip/src/netif/ppp/pppol2tp.c \
../Libraries/Ethernet/lwip/src/netif/ppp/pppos.c \
../Libraries/Ethernet/lwip/src/netif/ppp/upap.c \
../Libraries/Ethernet/lwip/src/netif/ppp/utils.c \
../Libraries/Ethernet/lwip/src/netif/ppp/vj.c 

C_DEPS += \
./Libraries/Ethernet/lwip/src/netif/ppp/auth.d \
./Libraries/Ethernet/lwip/src/netif/ppp/ccp.d \
./Libraries/Ethernet/lwip/src/netif/ppp/chap-md5.d \
./Libraries/Ethernet/lwip/src/netif/ppp/chap-new.d \
./Libraries/Ethernet/lwip/src/netif/ppp/chap_ms.d \
./Libraries/Ethernet/lwip/src/netif/ppp/demand.d \
./Libraries/Ethernet/lwip/src/netif/ppp/eap.d \
./Libraries/Ethernet/lwip/src/netif/ppp/ecp.d \
./Libraries/Ethernet/lwip/src/netif/ppp/eui64.d \
./Libraries/Ethernet/lwip/src/netif/ppp/fsm.d \
./Libraries/Ethernet/lwip/src/netif/ppp/ipcp.d \
./Libraries/Ethernet/lwip/src/netif/ppp/ipv6cp.d \
./Libraries/Ethernet/lwip/src/netif/ppp/lcp.d \
./Libraries/Ethernet/lwip/src/netif/ppp/magic.d \
./Libraries/Ethernet/lwip/src/netif/ppp/mppe.d \
./Libraries/Ethernet/lwip/src/netif/ppp/multilink.d \
./Libraries/Ethernet/lwip/src/netif/ppp/ppp.d \
./Libraries/Ethernet/lwip/src/netif/ppp/pppapi.d \
./Libraries/Ethernet/lwip/src/netif/ppp/pppcrypt.d \
./Libraries/Ethernet/lwip/src/netif/ppp/pppoe.d \
./Libraries/Ethernet/lwip/src/netif/ppp/pppol2tp.d \
./Libraries/Ethernet/lwip/src/netif/ppp/pppos.d \
./Libraries/Ethernet/lwip/src/netif/ppp/upap.d \
./Libraries/Ethernet/lwip/src/netif/ppp/utils.d \
./Libraries/Ethernet/lwip/src/netif/ppp/vj.d 

OBJS += \
./Libraries/Ethernet/lwip/src/netif/ppp/auth.o \
./Libraries/Ethernet/lwip/src/netif/ppp/ccp.o \
./Libraries/Ethernet/lwip/src/netif/ppp/chap-md5.o \
./Libraries/Ethernet/lwip/src/netif/ppp/chap-new.o \
./Libraries/Ethernet/lwip/src/netif/ppp/chap_ms.o \
./Libraries/Ethernet/lwip/src/netif/ppp/demand.o \
./Libraries/Ethernet/lwip/src/netif/ppp/eap.o \
./Libraries/Ethernet/lwip/src/netif/ppp/ecp.o \
./Libraries/Ethernet/lwip/src/netif/ppp/eui64.o \
./Libraries/Ethernet/lwip/src/netif/ppp/fsm.o \
./Libraries/Ethernet/lwip/src/netif/ppp/ipcp.o \
./Libraries/Ethernet/lwip/src/netif/ppp/ipv6cp.o \
./Libraries/Ethernet/lwip/src/netif/ppp/lcp.o \
./Libraries/Ethernet/lwip/src/netif/ppp/magic.o \
./Libraries/Ethernet/lwip/src/netif/ppp/mppe.o \
./Libraries/Ethernet/lwip/src/netif/ppp/multilink.o \
./Libraries/Ethernet/lwip/src/netif/ppp/ppp.o \
./Libraries/Ethernet/lwip/src/netif/ppp/pppapi.o \
./Libraries/Ethernet/lwip/src/netif/ppp/pppcrypt.o \
./Libraries/Ethernet/lwip/src/netif/ppp/pppoe.o \
./Libraries/Ethernet/lwip/src/netif/ppp/pppol2tp.o \
./Libraries/Ethernet/lwip/src/netif/ppp/pppos.o \
./Libraries/Ethernet/lwip/src/netif/ppp/upap.o \
./Libraries/Ethernet/lwip/src/netif/ppp/utils.o \
./Libraries/Ethernet/lwip/src/netif/ppp/vj.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/netif/ppp/%.o: ../Libraries/Ethernet/lwip/src/netif/ppp/%.c Libraries/Ethernet/lwip/src/netif/ppp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif-2f-ppp

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif-2f-ppp:
	-$(RM) ./Libraries/Ethernet/lwip/src/netif/ppp/auth.d ./Libraries/Ethernet/lwip/src/netif/ppp/auth.o ./Libraries/Ethernet/lwip/src/netif/ppp/ccp.d ./Libraries/Ethernet/lwip/src/netif/ppp/ccp.o ./Libraries/Ethernet/lwip/src/netif/ppp/chap-md5.d ./Libraries/Ethernet/lwip/src/netif/ppp/chap-md5.o ./Libraries/Ethernet/lwip/src/netif/ppp/chap-new.d ./Libraries/Ethernet/lwip/src/netif/ppp/chap-new.o ./Libraries/Ethernet/lwip/src/netif/ppp/chap_ms.d ./Libraries/Ethernet/lwip/src/netif/ppp/chap_ms.o ./Libraries/Ethernet/lwip/src/netif/ppp/demand.d ./Libraries/Ethernet/lwip/src/netif/ppp/demand.o ./Libraries/Ethernet/lwip/src/netif/ppp/eap.d ./Libraries/Ethernet/lwip/src/netif/ppp/eap.o ./Libraries/Ethernet/lwip/src/netif/ppp/ecp.d ./Libraries/Ethernet/lwip/src/netif/ppp/ecp.o ./Libraries/Ethernet/lwip/src/netif/ppp/eui64.d ./Libraries/Ethernet/lwip/src/netif/ppp/eui64.o ./Libraries/Ethernet/lwip/src/netif/ppp/fsm.d ./Libraries/Ethernet/lwip/src/netif/ppp/fsm.o ./Libraries/Ethernet/lwip/src/netif/ppp/ipcp.d ./Libraries/Ethernet/lwip/src/netif/ppp/ipcp.o ./Libraries/Ethernet/lwip/src/netif/ppp/ipv6cp.d ./Libraries/Ethernet/lwip/src/netif/ppp/ipv6cp.o ./Libraries/Ethernet/lwip/src/netif/ppp/lcp.d ./Libraries/Ethernet/lwip/src/netif/ppp/lcp.o ./Libraries/Ethernet/lwip/src/netif/ppp/magic.d ./Libraries/Ethernet/lwip/src/netif/ppp/magic.o ./Libraries/Ethernet/lwip/src/netif/ppp/mppe.d ./Libraries/Ethernet/lwip/src/netif/ppp/mppe.o ./Libraries/Ethernet/lwip/src/netif/ppp/multilink.d ./Libraries/Ethernet/lwip/src/netif/ppp/multilink.o ./Libraries/Ethernet/lwip/src/netif/ppp/ppp.d ./Libraries/Ethernet/lwip/src/netif/ppp/ppp.o ./Libraries/Ethernet/lwip/src/netif/ppp/pppapi.d ./Libraries/Ethernet/lwip/src/netif/ppp/pppapi.o ./Libraries/Ethernet/lwip/src/netif/ppp/pppcrypt.d ./Libraries/Ethernet/lwip/src/netif/ppp/pppcrypt.o ./Libraries/Ethernet/lwip/src/netif/ppp/pppoe.d ./Libraries/Ethernet/lwip/src/netif/ppp/pppoe.o ./Libraries/Ethernet/lwip/src/netif/ppp/pppol2tp.d ./Libraries/Ethernet/lwip/src/netif/ppp/pppol2tp.o ./Libraries/Ethernet/lwip/src/netif/ppp/pppos.d ./Libraries/Ethernet/lwip/src/netif/ppp/pppos.o ./Libraries/Ethernet/lwip/src/netif/ppp/upap.d ./Libraries/Ethernet/lwip/src/netif/ppp/upap.o ./Libraries/Ethernet/lwip/src/netif/ppp/utils.d ./Libraries/Ethernet/lwip/src/netif/ppp/utils.o ./Libraries/Ethernet/lwip/src/netif/ppp/vj.d ./Libraries/Ethernet/lwip/src/netif/ppp/vj.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-netif-2f-ppp

