# !/bin/sh

# Autostart applications

# This file contains WM-independent autostart applications
sh $AUTOSTART &

# WM-specific autostart applications
sxhkd -c $WM_CONFIG_DIR/sxhkdrc $KEYBIND &
nitrogen --restore &

## EOF ##
