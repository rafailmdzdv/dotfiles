#!/bin/bash

file_path=$SCREEN_DIR/$(date +"%Y%m%d_%H%M%S_grim.png")
grim $file_path

# copy to clipboard
cat $file_path | wl-copy
