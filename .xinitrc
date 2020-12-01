#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#start greenclip daemon for clipboard
greenclip daemon &

# start volume input/output applet
pasystray &

# start udiskie for automounting
udiskie --tray & 

# start bluetooh manager applet
blueman-applet &

# setting wallpaper
feh --bg-fill $HOME/media/images/wallpapers/wp1.png

# setting screen resolutions
$HOME/.screenlayout/external-default.sh

# starting window compositor picom
picom -f &

# start i3 with X
exec i3

