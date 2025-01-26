{pkgs, ...}: {


  wayland.windowManager.hyprland = {

    enable = true;

    package = pkgs.hyprland;

    xwayland.enable = true;

    systemd.enable = true;



    settings = {

        "$mainMod" = "SUPER";
        # Default
        "$scriptsDir" =  "$HOME/.config/hypr/scripts";
        "$configs" =  "$HOME/.config/hypr/configs";
        # User
        "$UserConfigs" = "$HOME/.config/hypr/UserConfigs";
        "$UserScripts" = "$HOME/.config/hypr/UserScripts";
        
        bind = import ./configs/Keybinds.nix;
        env = import ./configs/env.nix;
        monitor=",preferred,auto,1";






        exec-once = [
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
          "hypridle &"
        ];

        input = import ./input.nix;
        gestures = import ./gestures.nix;
    };
  };
}
