#!/usr/bin/env bash

killall -q polybar

# polybar first &
# polybar second &
# polybar third &
# polybar bottom &
polybar main &
# polybar gaming &
polybar tray &
sleep 1
bash ~/.config/polybar/scripts/hide.sh
polybar gaming &

echo "Polybar launched..."

bash ~/.config/polybar/switch-dracula.sh
