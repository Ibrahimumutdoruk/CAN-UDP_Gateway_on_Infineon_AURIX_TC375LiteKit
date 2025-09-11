################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/lwip/src/api/api_lib.c \
../Libraries/Ethernet/lwip/src/api/api_msg.c \
../Libraries/Ethernet/lwip/src/api/err.c \
../Libraries/Ethernet/lwip/src/api/if_api.c \
../Libraries/Ethernet/lwip/src/api/netbuf.c \
../Libraries/Ethernet/lwip/src/api/netdb.c \
../Libraries/Ethernet/lwip/src/api/netifapi.c \
../Libraries/Ethernet/lwip/src/api/sockets.c \
../Libraries/Ethernet/lwip/src/api/tcpip.c 

C_DEPS += \
./Libraries/Ethernet/lwip/src/api/api_lib.d \
./Libraries/Ethernet/lwip/src/api/api_msg.d \
./Libraries/Ethernet/lwip/src/api/err.d \
./Libraries/Ethernet/lwip/src/api/if_api.d \
./Libraries/Ethernet/lwip/src/api/netbuf.d \
./Libraries/Ethernet/lwip/src/api/netdb.d \
./Libraries/Ethernet/lwip/src/api/netifapi.d \
./Libraries/Ethernet/lwip/src/api/sockets.d \
./Libraries/Ethernet/lwip/src/api/tcpip.d 

OBJS += \
./Libraries/Ethernet/lwip/src/api/api_lib.o \
./Libraries/Ethernet/lwip/src/api/api_msg.o \
./Libraries/Ethernet/lwip/src/api/err.o \
./Libraries/Ethernet/lwip/src/api/if_api.o \
./Libraries/Ethernet/lwip/src/api/netbuf.o \
./Libraries/Ethernet/lwip/src/api/netdb.o \
./Libraries/Ethernet/lwip/src/api/netifapi.o \
./Libraries/Ethernet/lwip/src/api/sockets.o \
./Libraries/Ethernet/lwip/src/api/tcpip.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/lwip/src/api/%.o: ../Libraries/Ethernet/lwip/src/api/%.c Libraries/Ethernet/lwip/src/api/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-api

clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-api:
	-$(RM) ./Libraries/Ethernet/lwip/src/api/api_lib.d ./Libraries/Ethernet/lwip/src/api/api_lib.o ./Libraries/Ethernet/lwip/src/api/api_msg.d ./Libraries/Ethernet/lwip/src/api/api_msg.o ./Libraries/Ethernet/lwip/src/api/err.d ./Libraries/Ethernet/lwip/src/api/err.o ./Libraries/Ethernet/lwip/src/api/if_api.d ./Libraries/Ethernet/lwip/src/api/if_api.o ./Libraries/Ethernet/lwip/src/api/netbuf.d ./Libraries/Ethernet/lwip/src/api/netbuf.o ./Libraries/Ethernet/lwip/src/api/netdb.d ./Libraries/Ethernet/lwip/src/api/netdb.o ./Libraries/Ethernet/lwip/src/api/netifapi.d ./Libraries/Ethernet/lwip/src/api/netifapi.o ./Libraries/Ethernet/lwip/src/api/sockets.d ./Libraries/Ethernet/lwip/src/api/sockets.o ./Libraries/Ethernet/lwip/src/api/tcpip.d ./Libraries/Ethernet/lwip/src/api/tcpip.o

.PHONY: clean-Libraries-2f-Ethernet-2f-lwip-2f-src-2f-api

