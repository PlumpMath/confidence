#!/bin/bash

xsetroot -cursor_name left_ptr
# Disable turning the screen off to save power
xset -dpms; xset s off

#feh -bg-scale /usr/share/themes/Adwaita/backgrounds/stripes.jpg

# Use de layout when Alt+Gr is pressed
setxkbmap -option grp:switch us,de

eval `dbus-launch --auto-syntax`
start-pulseaudio-x11
pactl set-sink-volume 0 1.0
nm-applet&
#conky&
udiskie --smart-tray --no-notify &

#xmodmap ~/.swap-esc-capslock
synclient TouchpadOff=1

taffybar&

eval $(ssh-agent -s)

exec xmonad
#exec gnome-session
