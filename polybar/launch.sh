#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar-msg cmd quit

# Launch bars
polybar -c ~/.config/polybar/config.ini arch &
polybar -c ~/.config/polybar/config.ini left &
polybar -c ~/.config/polybar/config.ini xwindow &
polybar -c ~/.config/polybar/config.ini center &
polybar -c ~/.config/polybar/config.ini sound &
ln -sf /tmp/polybar_mqueue.$! /tmp/ipc-sound &
polybar -c ~/.config/polybar/config.ini software &
polybar -c ~/.config/polybar/config.ini system-info &
polybar -c ~/.config/polybar/config.ini poweroff &

