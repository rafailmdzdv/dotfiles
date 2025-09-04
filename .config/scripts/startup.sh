commands=(
    "xwayland-satellite"
    "waybar"
    "swaync"
    "swww-daemon"
    "wallpchange ~/.config/wallpapers/wallpaper_4.png"
    "blueman-applet"
)

for cmd in "${commands[@]}"
do
    exec ${cmd} &
done
