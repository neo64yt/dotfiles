#!/bin/sh

# This script loads common autostart applications for all WM

# Autostart applications
###########################
#  Guide for autostart    #
# (sleep 1s && command) & #
###########################

# Background daemons first
dex -a &
picom --experimental-backend &
/usr/bin/dunst &
spacefm -d &
devmon &
$LOCK &
usbmuxd --udev &

# Systray
(sleep 3s && mictray) &
(sleep 3s && volumeicon) &
