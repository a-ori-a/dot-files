#!/usr/bin/env bash

killall -q polybar

# polybar first &
# polybar second &
# polybar third &
# polybar bottom &
polybar -c ~/.config/polybar/dracula.ini main &
# polybar gaming &
polybar -c ~/.config/polybar/dracula.ini tray &
sleep 1
bash ~/.config/polybar/scripts/hide.sh
polybar gaming &

echo "Polybar launched..."
