#!/usr/bin/env bash

xmodmap ~/.Xmodmap
feh --bg-fill ~/imgs/wallpaper.jpg &
setxkbmap -layout us,ru
setxkbmap -option 'grp:shifts_toggle'
xsetroot -cursor_name left_ptr
exec dbus-launch xmonad
