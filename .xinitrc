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

export GTK_THEME=Adwaita:dark

# Fix 'X' cursor on desktop
xsetroot -cursor_name left_ptr &
xrandr --output DP-2 --primary --mode 1920x1080 --pos 1920x0 --rate 180 --output HDMI-0 --rate 60 --mode 1920x1080 --pos 0x0 &
xset r rate 200 50 &
# wireplumber &
# activate 'off' profile for rgb lights
openrgb -p off &
# notification daemon
wired &
# external storage daemon
udiskie &
# multimedia keys. Config at .xbindkeysrc
xbindkeys &
# wallpaper
./.config/polybar/launch_polybar.sh &
.//usr/lib/geoclue-2.0/demos/agent &
redshift &
picom -b &
nitrogen --restore &
# polybar example &
easyeffects &
# vibrantLinux &
exec bspwm
