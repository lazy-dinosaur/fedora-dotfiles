#!/bin/bash

backlight_percent=$(brightnessctl -m | cut -d, -f4)
backlight_value=${backlight_percent%\%}

if [ $backlight_value -le 15 ]; then
	brightnessctl -d $(ls -w1 /sys/class/backlight | head -1) set 15%
else
	brightnessctl -d $(ls -w1 /sys/class/backlight | head -1) set $backlight_value%
fi
