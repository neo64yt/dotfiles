# !/bin/sh

# This script loads common autostart applications for all WM

# Autostart applications
###########################
#  Guide for autostart    #
# (sleep 1s && command) & #
###########################

# Background daemons first
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
picom --experimental-backend &
/usr/bin/dunst &
spacefm -d &
devmon &
xfce4-power-manager &

# Systray
(sleep 1s && nm-applet) &
(sleep 1s && pamac-tray) &
(sleep 3s && mictray) &
(sleep 3s && pnmixer) &
(sleep 1s && blueman-tray) &