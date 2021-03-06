#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar top -c $HOME/.config/polybar/config.top.ini &
polybar bot -c $HOME/.config/polybar/config.bot.ini &
