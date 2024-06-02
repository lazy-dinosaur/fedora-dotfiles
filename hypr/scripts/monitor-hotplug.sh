#!/bin/bash

# Define the log file
LOGFILE="/var/log/monitor-hotplug.log"

# Create the log file with appropriate permissions if it doesn't exist
if [ ! -f $LOGFILE ]; then
	sudo touch $LOGFILE
	sudo chmod 666 $LOGFILE
fi
date >>$LOGFILE
echo "Monitor change detected" >>$LOGFILE

# Check if Hyprland is running
if pgrep -x "Hyprland" >/dev/null; then
	echo "Hyprland session detected" >>$LOGFILE

	# Get connected monitors
	CONNECTED_MONITORS=$(hyprctl monitors | grep "Monitor" | awk '{ print $2 }')

	echo "Connected monitors: $CONNECTED_MONITORS" >>$LOGFILE

	# Count connected monitors
	NUM_CONNECTED=$(echo "$CONNECTED_MONITORS" | wc -l)

	# Execute different commands based on the number of connected monitors
	if [ "$NUM_CONNECTED" -eq 1 ]; then
		echo "Single monitor setup" >>$LOGFILE
		# Single monitor setup
		hyprctl keyword monitor desc:LG Electronics LG ULTRAFINE 311NTKF39741,preferred,-2880x-225,1.33
		hyprctl keyword monitor desc: ,2560x1600@60,auto,1.33
		hyprctl dispatch moveworkspactoemonitor 1 0
		hyprctl dispatch workspace 1
		killall ags ydotool
		ags &
		swww restore
	elif [ "$NUM_CONNECTED" -gt 1 ]; then
		echo "Multi-monitor setup" >>$LOGFILE
		# Multi-monitor setup
		hyprctl keyword monitor desc:LG Electronics LG ULTRAFINE 311NTKF39741,preferred,-2880x-350,1.33
		hyprctl keyword monitor desc: ,preferred,auto,1.6
		hyprctl dispatch moveworkspacetomonitor 1 1
		hyprctl dispatch moveworkspacetomonitor 2 0
		hyprctl dispatch workspace 2
		hyprctl dispatch workspace 1
		killall ags ydotool
		ags &
		swww restore
	fi
else
	echo "Hyprland session not detected. Exiting." >>$LOGFILE
fi
