################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/iLLD/TC37A/Tricore/Gtm/Trig/IfxGtm_Trig.c 

C_DEPS += \
./Libraries/iLLD/TC37A/Tricore/Gtm/Trig/IfxGtm_Trig.d 

OBJS += \
./Libraries/iLLD/TC37A/Tricore/Gtm/Trig/IfxGtm_Trig.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/iLLD/TC37A/Tricore/Gtm/Trig/%.o: ../Libraries/iLLD/TC37A/Tricore/Gtm/Trig/%.c Libraries/iLLD/TC37A/Tricore/Gtm/Trig/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Gtm-2f-Trig

clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Gtm-2f-Trig:
	-$(RM) ./Libraries/iLLD/TC37A/Tricore/Gtm/Trig/IfxGtm_Trig.d ./Libraries/iLLD/TC37A/Tricore/Gtm/Trig/IfxGtm_Trig.o

.PHONY: clean-Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Gtm-2f-Trig

