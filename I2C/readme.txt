BeagleBone Black I2C
=========================================

I2C is enabled by default in BBB

It can be accessed bt /dev/i2c-0 and /dev/i2c-1 files 

These are the pins that can be used for I2C

P9_17	0x15C	I2C1_SCL	spi0_cs0
P9_18	0×158	I2C1_SDA	spi0_d1
P9_19	0x17C	I2C2_SCL	uart1_rtsn
P9_20	0×178	I2C2_SDA	uart1_ctsn

I2C1 is accessed by /dev/i2c-0 and I2C2 by /dev/i2c-1

Installing i2c-tools will come handy

opkg install i2c-tools

Then use the

i2cdetect -y -r 0 

to detect the address of connected device (replace 0 by 1 if connected to 2nd port)

python-smbus can be used to communicate with the i2c device

opkg install python-smbus

Refer to the documentation python-smbus
http://wiki.erazor-zone.de/wiki:linux:python:smbus:doc
