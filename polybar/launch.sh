#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
#polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch topbar
# echo "---" | tee -a /tmp/topbar.log
# polybar topbar 2>&1 | tee -a /tmp/polybar1.log & disown

# Launch topbar for each monitor
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload topbar &
  done
else
  polybar --reload example &
fi

echo "Bars launched..."
