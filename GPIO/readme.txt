BeagleBone Black GPIO
==============================================================================

Refer "pins.txt" for pin configuration

Library used: Adafruit Beaglebone IO Library cloned from

git clone git://github.com/adafruit/adafruit-beaglebone-io-python.git

Install it by changing to the library directory and execute command

python setup.py install
-------------------------------------------
Importing GPIO:

import BBIO.GPIO as GPIO

Importing PWM:

import BBIO.PWM as PWM
-------------------------------------------
To initialise a pin:
GPIO.setup("P8_10", GPIO.OUT)

To make a pin high:
GPIO.output("P8_10", GPIO.HIGH)

Once you've done that, you can access the input value in a few different ways. The first, and easiest way is just polling the inputs, such as in a loop that keeps checking them:
Copy Code

if GPIO.input("P8_14"):
    print("HIGH")
else:
    print("LOW")
You can also wait for an edge. This means that if the value is falling, rising, or both, the GPIO library will trigger, and continue execution of your program.

The wait_for_edge method is blocking, and will wait until something happens:
Copy Code

GPIO.wait_for_edge("P8_14", GPIO.RISING)
Another option, that is non-blocking is to add an event to detect. First, you setup your event to watch for, then you can do whatever else your program will do, and later on, you can check if that event was detected.

A simple example of this is as follows:
Copy Code

GPIO.add_event_detect("P9_12", GPIO.FALLING)
#your amazing code here
#detect wherever:
if GPIO.event_detected("P9_12"):
    print "event detected!"
We'll continue to add more examples, and features as we go, so check back often!
PWMCreated by Justin Cooper
Below are a few examples of using the BBIO.PWM module. It's fairly simple to use as well!

Setup
To setup a pin to use PWM:
Copy Code

import BBIO.PWM as PWM
#PWM.start(channel, duty, freq=2000)
PWM.start("P9_14", 50)
The valid values for duty are 0.0 to 100.0. The start method activate pwm on that channel. There is no need to setup the channels with BBIO.PWM.

Once you've started, you can then set the duty cycle, or the frequency:
Copy Code

PWM.set_duty_cycle("P9_14", 25.5)
PWM.set_frequency("P9_14", 10)
You'll also want to either disable that specific channel, or cleanup all of them when you're done:
Copy Code

PWM.disable("P9_14")
PWM.cleanup()
