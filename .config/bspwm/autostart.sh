# !/bin/sh

# Directory of dwm autostart configuration
export WM_CONFIG_DIR="$XDG_CONFIG_HOME/bspwm"

# Session killer
export SESSION_KILLER="$WM_CONFIG_DIR/session-killer"

# Autostart file
export WM_AUTOSTART="$WM_CONFIG_DIR/autostart.sh"

# Keybindings
export WM_KEYBIND="$WM_CONFIG_DIR/edit-keybinds"

# Autostart applications

# This file contains WM-independent autostart applications
sh $AUTOSTART &

# WM-specific autostart applications
sxhkd -c $WM_CONFIG_DIR/sxhkdrc $KEYBIND &
nitrogen --restore &

## EOF ##
