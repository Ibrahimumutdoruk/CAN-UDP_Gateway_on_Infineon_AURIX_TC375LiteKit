################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/Ethernet/Phy_Dp83825i/IfxGeth_Phy_Dp83825i.c 

C_DEPS += \
./Libraries/Ethernet/Phy_Dp83825i/IfxGeth_Phy_Dp83825i.d 

OBJS += \
./Libraries/Ethernet/Phy_Dp83825i/IfxGeth_Phy_Dp83825i.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/Phy_Dp83825i/%.o: ../Libraries/Ethernet/Phy_Dp83825i/%.c Libraries/Ethernet/Phy_Dp83825i/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/Users/Asus/AURIX-v1.10.16-workspace/Ethernet_1_KIT_TC375_LK/TriCore Release (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-Ethernet-2f-Phy_Dp83825i

clean-Libraries-2f-Ethernet-2f-Phy_Dp83825i:
	-$(RM) ./Libraries/Ethernet/Phy_Dp83825i/IfxGeth_Phy_Dp83825i.d ./Libraries/Ethernet/Phy_Dp83825i/IfxGeth_Phy_Dp83825i.o

.PHONY: clean-Libraries-2f-Ethernet-2f-Phy_Dp83825i

