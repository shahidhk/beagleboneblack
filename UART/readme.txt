There are 5 UART ports on BBB, but 1 is dedicated for JTAG debugging console support

So, there are 4 UART available for user access

UART2
UART3
UART4
UART5

These UART ports are listed as /dev/ttyO0, /dev/ttyO1 etc
if you do a listing of /dev folder you may see only ttyO0 (it is OH-0)

So, we need to enable other UART ports if we want to work with them

UART1 - /dev/ttyO1
P9_24	0×184	UART1_TXD	uart1_txd
P9_26	0×180	UART1_RXD	uart1_rxd

UART2 - /dev/ttyO2
P9_21	0×154	UART2_TXD	spi0_d0
P9_22	0×150	UART2_RXD	spi0_sclk

UART4 - /dev/ttyO4
P9_11	0×70	UART4_RXD	gpmc_wait0
P9_13	0×74	UART4_TXD	gpmc_wpn

inorder to enable these ports you need to run the following command

echo BB-UART1 > /sys/devices/bone_capemgr.9/slots

run the script as sh enableUART.sh 1
replace 1 with (1, 2, or 4) the serial prt you want to enable

Replace 2 with the number of UART port you want to enable: 1, 2 or 4
Note: this needs to be done on every reboot
Use os.system(echo BB-UART2 > /sys/devices/bone_capemgr.9/slots) in your python program to do this
import os to use the above command

Use pyserial library to connect to serial port
