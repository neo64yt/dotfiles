# !/bin/sh

# Config directory
export WM_CONFIG_DIR="$XDG_CONFIG_HOME/dwm"
stats="slstatus"

# Session killer
export SESSION_KILLER="$WM_CONFIG_DIR/session-killer"

# Autostart file
export WM_AUTOSTART="$WM_CONFIG_DIR/autostart.sh"

# Keybindings configuration
export WM_KEYBIND="$WM_CONFIG_DIR/NOTE"

# Autostart applications

# This file contains the WM-independent autostart applications
sh $AUTOSTART &

# WM-specific autostart applications
sxhkd -c $KEYBIND &
xwallpaper --center $XDG_DATA_HOME/backgrounds/neointhevoid.png &
$stats &

## EOF ##
