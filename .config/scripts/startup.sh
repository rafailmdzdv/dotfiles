commands=(
    "xwayland-satellite"
    "waybar"
    "swaync"
    "swww-daemon"
    "wallpchange ~/Изображения/power-poles-purple-sky-pixel-moewalls-com.gif"
    "blueman-applet"
)

for cmd in "${commands[@]}"
do
    exec ${cmd} &
done
