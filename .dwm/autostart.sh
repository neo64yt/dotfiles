# !/bin/sh

# Directory of dwm autostart configuration
dir="$HOME/.dwm"
stats="slstatus"

# Session killer
export SESSION_KILLER="$dir/session-killer"

# Autostart file
export WM_AUTOSTART="$dir/autostart.sh"

# Keybindings configuration
export WM_KEYBIND="$dir/NOTE"

# Autostart applications

# This file contains the WM-independent autostart applications
sh $AUTOSTART &

# WM-specific autostart applications
sxhkd -c $KEYBIND &
nitrogen --restore &
$stats &

## EOF ##
