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

setxkbmap us &
xrandr --output DP-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --rate 180 --output DP-1 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off --output USB-C-0 --off --output DP-1-1 --off --output HDMI-1-1 --off --output HDMI-1-2 --off --output HDMI-1-3 --off
picom -f &
xsetroot -cursor_name left_ptr &
nitrogen --restore &
polybar example &
polybar example1 &
# sleep 4 && ./.config/polybar/launch_polybar.sh &
xset r rate 200 25 &
cadmus &
exec bspwm
