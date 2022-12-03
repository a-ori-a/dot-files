#!/usr/bin/env bash

killall -q polybar

polybar first &
polybar second &
polybar third &
polybar bottom &

echo "Polybar launched..."
