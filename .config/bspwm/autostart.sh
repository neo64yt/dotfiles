# !/bin/sh

# Directory of dwm autostart configuration
export WM_CONFIG_DIR="$HOME/.config/bspwm"

# Session killer
export SESSION_KILLER="$WM_CONFIG_DIR/session-killer"

# Autostart file
export WM_AUTOSTART="$WM_CONFIG_DIR/autostart.sh"

# Autostart applications

# This file contains WM-independent autostart applications
sh $AUTOSTART &

# WM-specific autostart applications
sxhkd -c $WM_CONFIG_DIR/sxhkdrc $KEYBIND &
nitrogen --restore &

## EOF ##
