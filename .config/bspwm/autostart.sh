# !/bin/sh

# Directory of dwm autostart configuration
dir="$HOME/.config/bspwm"
utils="$HOME/.utils"

# Session killer
export SESSION_KILLER="$dir/session-killer"

# Autostart applications
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
sudo ntpdate ntp.ubuntu.com &
nm-applet &
pamac-tray &
picom &
sxhkd -c $dir/sxhkdrc &
nitrogen --restore &
/usr/bin/dunst &
xfce4-power-manager &
volumeicon &
blueman-tray &
spacefm -d &
devmon &
xautolock -time 10 -locker "$utils/lock" &
