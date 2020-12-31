# !/bin/sh

# Directory of dwm autostart configuration
dir="$HOME/.dwm"
stats="$dir/scriptbar/start-status"

# Session killer
export SESSION_KILLER="$dir/session-killer"

# Autostart file
export WM_AUTOSTART="$dir/autostart.sh"

# Autostart applications

# This file contains the WM-independent autostart applications
sh $AUTOSTART &

# WM-specific autostart applications
sxhkd -c $KEYBIND &
nitrogen --restore &
sh $stats &

## EOF ##
