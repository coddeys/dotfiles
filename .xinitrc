#!/usr/bin/env bash

xmodmap /home/dima/.Xmodmap
feh --bg-fill /home/dima/picture/wallpaper.jpg &
setxkbmap -layout us,ru
setxkbmap -option 'grp:shifts_toggle'
xsetroot -cursor_name left_ptr
exec dbus-launch xmonad
