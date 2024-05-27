#!/bin/bash

kbd_file="$HOME/.previous_kbd"

current_kbd=$(brightnessctl -d 'asus::kbd_backlight' -m | cut -d, -f4)

get_kbd_backlight() {
	echo $(brightnessctl -d 'asus::kbd_backlight' -m | cut -d, -f4)
}

previous_kbd=$(cat "$kbd_file" 2>/dev/null)
# Change brightness
change_kbd_backlight() {
	brightnessctl -d 'asus::kbd_backlight' set "$1"
}

# Execute accordingly
case "$1" in
"--get")
	get_kbd_backlight
	;;
"--inc")
	change_kbd_backlight "+1%"
	notify-send -e -u low "Keyboard brightness Increased"
	;;
"--dec")
	change_kbd_backlight "1%-"
	notify-send -e -u low "Keyboard brightenss Decreased"
	;;
"--before-sleep")
	echo "$current_kbd" >"$kbd_file"
	change_kbd_backlight "2%"
	;;
"--sleep")
	change_kbd_backlight "0%"
	;;
"--resume")
	change_kbd_backlight "$previous_kbd"
	rm -f "$kbd_file"
	;;
*)
	get_kbd_backlight
	;;
esac
