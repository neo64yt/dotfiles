# !/bin/sh

# Directory of dwm autostart configuration
dir="$HOME/.dwm"
homebin="$HOME/bin"
stats="$dir/scriptbar/start-status"

# Session killer
export SESSION_KILLER="$dir/session-killer"

# Autostart applications
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
sudo ntpdate ntp.ubuntu.com &
nm-applet &
pamac-tray &
picom --experimental-backend &
sxhkd -c $dir/sxhkdrc &
nitrogen --restore &
/usr/bin/dunst &
xfce4-power-manager &
sh $stats &
volumeicon &
blueman-tray &
spacefm -d &
devmon &
xautolock -time 10 -locker "$homebin/lock" &
