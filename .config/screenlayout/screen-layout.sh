#!/bin/sh
# checking if hdmi cable is connected, it returns "connected" or "disconnected"
hdmi_status=$(cat /sys/class/drm/card0/*HDMI*/status)

if [ $hdmi_status == "connected" ]; # if hdmi cable is connected, use only external monitor, else use only internal
then
	xrandr --output eDP-1 --off --output VGA-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --rate 120 
else
	xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VGA-1 --off --output HDMI-1 --off
fi
