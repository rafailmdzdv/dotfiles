#!/bin/bash

file_path=$SCREEN_DIR/$(date +"%Y%m%d_%H%M%S_grim.png")
grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp)" $SCREEN_DIR/$(date +"%Y%m%d_%H%M%S_grim.png")

# copy to clipboard
cat $file_path | wl-copy
