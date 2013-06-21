#Replace 2 with the number of UART port you want to enable: 1, 2 or 4
#Note: this needs to be done on every reboot
#Use os.system(echo BB-UART2 > /sys/devices/bone_capemgr.9/slots) in your python program to do this
#import os to use the above command
echo BB-UART2 > /sys/devices/bone_capemgr.9/slots
