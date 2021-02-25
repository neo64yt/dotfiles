#!/bin/sh

# This script loads common autostart applications for all WM

# Autostart applications

# Background daemons first
dex -a &
picom --experimental-backend &
/usr/bin/dunst &
spacefm -d &
$LOCK &
devmon &
usbmuxd --udev &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
xdg-xmenu-gen &
xclickroot -r $STARTMENU &

# Systray
(sleep 3s && cbatticon) &
(sleep 3s && mictray) &
(sleep 3s && pnmixer) &
