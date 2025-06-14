[
    "./initial-boot.sh"
    "swww-daemon --format xrgb"
    "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    "$scriptsDir/Polkit.sh"
    "waybar &"
    "nm-applet --indicator &"
    "swaync &"
    "ags &"
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
    "$UserScripts/RainbowBorders.sh &"
    "$scriptsDir/autobluetooth.sh &"
    "hypridle &"
    
]