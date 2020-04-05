#!/bin/zsh

# Terminate already running bar instances
killall -q autotiling

# Wait until the processes have been shut down
while pgrep -u $UID -x autotiling >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
autotiling &

echo "Polybar launched..."