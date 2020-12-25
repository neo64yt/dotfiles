# !/bin/sh

# Directory of dwm autostart configuration
dir="$HOME/.config/bspwm"

# Session killer
export SESSION_KILLER="$dir/session-killer"

# Autostart file
export AUTOSTART="$dir/autostart.sh"

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
