#!/bin/bash

get_backlight() {
	echo $(brightnessctl -m | cut -d, -f4)
}

# Change brightness
change_backlight() {
	local backlight_percent=$(brightnessctl -m | cut -d, -f4)
	local backlight_value=${backlight_percent%\%}

	if [ $backlight_value -le 25 ]; then
		brightnessctl set "$1" && brightnessctl -d $(ls -w1 /sys/class/backlight | head -1) set 25%
	else
		brightnessctl set "$1" && brightnessctl -d $(ls -w1 /sys/class/backlight | head -1) set "$1"
	fi
}

# Execute accordingly
case "$1" in
"--get")
	get_backlight
	;;
"--inc")
	change_backlight "+5%"
	;;
"--dec")
	change_backlight "5%-"
	;;
*)
	get_backlight
	;;
esac
