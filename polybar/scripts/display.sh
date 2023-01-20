#! /usr/bin/env bash

NOW=$(cat /sys/class/backlight/intel_backlight/actual_brightness)

MAX=$(cat /sys/class/backlight/intel_backlight/max_brightness)

PER=$(( $NOW "*" 5 / $MAX ))

PLUS=$(seq -s '+' 0 $PER | tr -d '[0-9]')
MINUS=$(seq -s '-' 0 $((5 - $PER)) | tr -d '[0-9]' )

echo "BRT $PLUS$MINUS"

