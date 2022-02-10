################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/da14531_boot.c \
../src/hal_entry.c 

OBJS += \
./src/da14531_boot.o \
./src/hal_entry.o 

C_DEPS += \
./src/da14531_boot.d \
./src/hal_entry.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m23 -mthumb -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_RA_ -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\src" -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\ra\fsp\inc" -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\ra\fsp\inc\api" -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\ra\fsp\inc\instances" -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\ra_gen" -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\ra_cfg\fsp_cfg\bsp" -I"D:\Bitbucket\sdk6\interfaces\external-processor-renesas\project_environment\e2studio\ra_cfg\fsp_cfg" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '


