killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main >> /tmp/polybar1.log 2>&1 &
  done
else
  polybar --reload main >> /tmp/polybar1.log 2>&1 &
fi
