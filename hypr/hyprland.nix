{pkgs, ...}: {


  wayland.windowManager.hyprland = {

    enable = true;

    package = pkgs.hyprland;

    xwayland.enable = true;

    systemd.enable = true;



    settings = {

        "$mainMod" = "SUPER";
        # Default
        "$scriptsDir" =  "$HOME/nixos-config/scripts";
        "$configs" =  "$HOME/nixos-config/hypr/configs";
        # User
        "$UserConfigs" = "$HOME/nixos-config/hypr/UserConfigs";
        "$UserScripts" = "$HOME/nixos-config/UserScripts";
        
        bind = import ./configs/Keybinds.nix;
        bindel = import ./configs/bindel.nix;
        bindm = [
          "$mainMod, mouse:272, movewindow"
          "$mainMod, mouse:273, resizewindow"
        ];
        env = import ./configs/env.nix;
        monitor=",preferred,auto,1";


        binds = {
          workspace_back_and_forth = true;
          allow_workspace_cycles = true;
          pass_mouse_when_bound = false;
        };




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

        input = import ./configs/inputs.nix;
        gestures = import ./configs/gestures.nix;

        dwindle = {
          pseudotile = "yes";
          preserve_split = "yes";
          special_scale_factor = "0.8";
        };

        general = {
          border_size = 2;
          gaps_in = 6;
          gaps_out = 8;

          resize_on_border = true;
          
          "col.active_border" = "$color12"; 
          "col.inactive_border" = "$backgroundCol";
          
          layout = "dwindle";
        };

        decoration = {
          rounding = 10;
                
          active_opacity = "1.0";
          inactive_opacity = "0.9";
          fullscreen_opacity = "1.0";

          dim_inactive = true;
          dim_strength = "0.1";
          dim_special = "0.8";

          blur = {
            enabled = true;
            size = 6;
            passes = 2;
            ignore_opacity = true;
            new_optimizations = true;
            special = true;
          };
        };

        animations = {
          enabled = "yes";

          bezier = [
            "wind, 0.05, 0.9, 0.1, 1.05"
            "winIn, 0.1, 1.1, 0.1, 1.1"
            "winOut, 0.3, -0.3, 0, 1"
            "liner, 1, 1, 1, 1"
            "overshot, 0.05, 0.9, 0.1, 1.05"
            "smoothOut, 0.5, 0, 0.99, 0.99"
            "smoothIn, 0.5, -0.5, 0.68, 1.5"
          ];
          
          animation = [
            "windows, 1, 6, wind, slide"
            "windowsIn, 1, 5, winIn, slide"
            "windowsOut, 1, 3, smoothOut, slide"
            "windowsMove, 1, 5, wind, slide"
            "border, 1, 1, liner"
            "borderangle, 1, 180, liner, loop"
            "fade, 1, 3, smoothOut"
            "workspaces, 1, 5, overshot"
          ];

        };

    };
  };
}
