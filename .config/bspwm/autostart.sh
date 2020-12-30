# !/bin/sh

# Directory of dwm autostart configuration
dir="$HOME/.config/bspwm"

# Session killer
export SESSION_KILLER="$dir/session-killer"

# Autostart file
autostart="$HOME/.autostart/autostart.sh"
export WM_AUTOSTART="$dir/autostart.sh"

# Autostart applications

# This file contains WM-independent autostart applications
sh $autostart &

# WM-specific autostart applications
sxhkd -c $dir/sxhkdrc &
nitrogen --restore &

## EOF ##
