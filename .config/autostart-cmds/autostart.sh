#!/bin/sh

# This script loads common autostart applications for all WM

# Autostart applications

# Background daemons first
dex -a &
picom --experimental-backend &
/usr/bin/dunst &
spacefm -d &
$LOCK &
xscreensaver -no-splash &
devmon &
usbmuxd --udev &

# Systray
(sleep 3s && mictray) &
(sleep 3s && pnmixer) &
