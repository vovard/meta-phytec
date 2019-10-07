FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-add-phycore-stm32mp1xx-target.patch  \
"
 
PROJECTS_LIST_PHY = " \
	'STM32MP157C-PHY/Examples/ADC/ADC_SingleConversion_TriggerTimer_DMA' \
	'STM32MP157C-PHY/Examples/Cortex/CORTEXM_MPU' \
	'STM32MP157C-PHY/Examples/CRC/CRC_UserDefinedPolynomial' \
	'STM32MP157C-PHY/Examples/CRYP/CRYP_AES_DMA' \
	'STM32MP157C-PHY/Examples/DMA/DMA_FIFOMode' \
	'STM32MP157C-PHY/Examples/GPIO/GPIO_EXTI' \
	'STM32MP157C-PHY/Examples/HASH/HASH_SHA224SHA256_DMA' \
	'STM32MP157C-PHY/Examples/I2C/I2C_TwoBoards_ComIT' \
	'STM32MP157C-PHY/Examples/LPTIM/LPTIM_PulseCounter' \
	'STM32MP157C-PHY/Examples/SPI/SPI_FullDuplex_ComDMA_Master' \
	'STM32MP157C-PHY/Examples/SPI/SPI_FullDuplex_ComDMA_Slave' \
	'STM32MP157C-PHY/Examples/SPI/SPI_FullDuplex_ComIT_Master' \
	'STM32MP157C-PHY/Examples/SPI/SPI_FullDuplex_ComIT_Slave' \
	'STM32MP157C-PHY/Examples/TIM/TIM_DMABurst' \
	'STM32MP157C-PHY/Examples/UART/UART_TwoBoards_ComDMA' \
	'STM32MP157C-PHY/Examples/UART/UART_TwoBoards_ComIT' \
	'STM32MP157C-PHY/Examples/WWDG/WWDG_Example' \
	'STM32MP157C-PHY/Applications/OpenAMP/OpenAMP_raw' \
	'STM32MP157C-PHY/Applications/OpenAMP/OpenAMP_TTY_echo' \
	'STM32MP157C-PHY/Applications/OpenAMP/OpenAMP_TTY_echo_wakeup' \
	'STM32MP157C-PHY/Applications/FreeRTOS/FreeRTOS_ThreadCreation' \
"

PROJECTS_LIST_append = " ${PROJECTS_LIST_PHY}"

