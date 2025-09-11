################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/iLLD/TC37A/Tricore/Dts/Dts/IfxDts_Dts.c 

C_DEPS += \
./Libraries/iLLD/TC37A/Tricore/Dts/Dts/IfxDts_Dts.d 

OBJS += \
./Libraries/iLLD/TC37A/Tricore/Dts/Dts/IfxDts_Dts.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/iLLD/TC37A/Tricore/Dts/Dts/%.o: ../Libraries/iLLD/TC37A/Tricore/Dts/Dts/%.c Libraries/iLLD/TC37A/Tricore/Dts/Dts/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Dts-2f-Dts

clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Dts-2f-Dts:
	-$(RM) ./Libraries/iLLD/TC37A/Tricore/Dts/Dts/IfxDts_Dts.d ./Libraries/iLLD/TC37A/Tricore/Dts/Dts/IfxDts_Dts.o

.PHONY: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Dts-2f-Dts

