#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# waiting for all monitors to come online
sleep 3

# Launch Polybar, using default config location ~/.config/polybar/config
# on all monitors available
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo "$m" >> /home/sugaya/multiple-monitors
    MONITOR=$m polybar -r example &
    sleep 1
    MONITOR=$m polybar -r example1 &
  done
else
  polybar -r example & polybar -r example1 &
fi

echo "Polybar launched..."
