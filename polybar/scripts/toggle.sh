#!/usr/bin/bash

if [ $(pgrep -f "polybar tray") -eq "" ]; then
	polybar-msg -p $(pgrep -f "polybar tray") cmd toggle
else
	polybar-msg -p $(pgrep -f "polybar -c /home/mahiro/.config/polybar/dracula.ini tray") cmd toggle
fi
