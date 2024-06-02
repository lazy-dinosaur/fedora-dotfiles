#!/bin/sh

handle() {
	case $1 in
	configreloaded*) /bin/bash -c /home/lazydino/.config/hypr/scripts/monitor-hotplug.sh ;;
	monitoradded*) /bin/bash -c /home/lazydino/.config/hypr/scripts/monitor-hotplug.sh ;;
	monitorremoved*) /bin/bash -c /home/lazydino/.config/hypr/scripts/monitor-hotplug.sh ;;
	esac
}

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
