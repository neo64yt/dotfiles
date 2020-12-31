# !/bin/sh

# Directory of dwm autostart configuration
dir="$HOME/.config/bspwm"

# Session killer
export SESSION_KILLER="$dir/session-killer"

# Autostart file
export WM_AUTOSTART="$dir/autostart.sh"

# Autostart applications

# This file contains WM-independent autostart applications
sh $AUTOSTART &

# WM-specific autostart applications
sxhkd -c $dir/sxhkdrc $KEYBIND &
nitrogen --restore &

## EOF ##
