#!/bin/bash
swayidle -w \
	timeout 1800 'hyprctl dispatch dpms off' \
	resume 'hyprctl dispatch dpms on' \
	timeout 3600 'systemctl suspend'
# 추후 lockscreen 추가 예정
