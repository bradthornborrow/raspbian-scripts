#!/bin/bash

dirname=`dirname "$0"`

# Manually set audio out on GPIO pin 18 (not needed if using dtoverlay in /boot/config.txt)
# raspi-gpio set 18 a5

# Enable audio on GPIO pin 18 in /boot/config.txt
# dtoverlay=audremap,pins_18_19

# Set volume to 75%
amixer -M set Headphone 75% > /dev/null

if [ $RANDOM -le 8192 ]; then
	aplay $dirname/cricket.wav
fi
