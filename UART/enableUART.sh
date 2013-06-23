#run the script as sh enableUART.sh 1
#replace 1 with (1, 2, or 4) the serial prt you want to enable
#Note: this needs to be done on every reboot
#Use os.system(echo BB-UART2 > /sys/devices/bone_capemgr.9/slots) in your python program to do this
#import os to use the above command

ser_port=$1

if [ $ser_port == 1 ]; then
	echo BB-UART1 > /sys/devices/bone_capemgr.9/slots;
fi
if [ $ser_port == 2 ]; then
	echo BB-UART2 > /sys/devices/bone_capemgr.9/slots;
fi
if [ $ser_port == 4 ]; then
	echo BB-UART4 > /sys/devices/bone_capemgr.9/slots;
fi
