{
    programs.hyprlock = {
        enable = true;
        settings = {
            "$background" = "rgb(060004)";
            "$foreground" = "rgb(DBCED1)";
            "$color0" = "rgb(0E070D)";
            "$color1" = "rgb(543F4B)";
            "$color2" = "rgb(5B4550)";
            "$color3" = "rgb(634B54)";
            "$color4" = "rgb(6A5059)";
            "$color5" = "rgb(71565D)";
            "$color6" = "rgb(71565D)";
            "$color7" = "rgb(C2B1B5)";
            "$color8" = "rgb(887C7F)";
            "$color9" = "rgb(705465)";
            "$color10" = "rgb(7A5C6A)";
            "$color11" = "rgb(846470)";
            "$color12" = "rgb(8D6B76)";
            "$color13" = "rgb(97737C)";
            "$color14" = "rgb(97737C)";
            "$color15" = "rgb(C2B1B5)";

            general = {
                grace = 1;
            };

            background = {
                path = "$HOME/.config/hypr/wallpaper_effects/.wallpaper_modified";
                blur_size = 5;
                blur_passes = 1;
                noise = 0.0117;
                contrast = 1.3000; # Vibrant!!!
                brightness = 0.8000;
                vibrancy = 0.2100;
                vibrancy_darkness = 0.0;
            };

            input-field  = {
                monitor = "";
                size = "250, 50";
                outline_thickness = 3;
                dots_size = 0.33; # Scale of input-field height, 0.2 - 0.8
                dots_spacing = 0.15; # Scale of dots' absolute size, 0.0 - 1.0
                dots_center = true;
                outer_color = "$color5";
                inner_color = "$color0";
                font_color = "$color12";
                fade_on_empty = true;
                placeholder_text = "<i>Password...</i>"; # Text rendered in the input box when it's empty.
                hide_input = false;
                position = "0, 80";
                halign = "center";
                valign = "bottom";
            };

            # Date
            label = {
                monitor = "";
                text = "cmd[update:18000000] echo \"<b> \"$(date +'%A, %-d %B %Y')\" </b>\"";
                color = "$color12";
                font_size = 34;
                font_family = "JetBrains Mono Nerd Font 10";
                position = "0, -80";
                halign = "center";
                valign = "top";
            };

            # Hour-Time
            label = {
                monitor = "";
                text = "cmd[update:1000] echo \"$(date +\"%H\")\"";
            #    text = cmd[update:1000] echo "$(date +"%I")"; #AM/PM
                color = "rgba(255, 185, 0, .6)";
                font_size = 150;
                font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
                position = "0, -200";
                halign = "center";
                valign = "top";
            };

            # Minute-Time
            label = {
                monitor = "";
                text = "cmd[update:1000] echo \"$(date +\"%M\")\"";
                color = "rgba(255, 255, 255, .6)";
                font_size = 150;
                font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
                position = "0, -450";
                halign = "center";
                valign = "top";
            };

            # Seconds-Time
            label = {
                monitor = "";
                text = "cmd[update:1000] echo \"$(date +\"%S\")\"";
            #    text = cmd[update:1000] echo "$(date +"%S %p")"; #AM/PM
                color = "$color12";
                font_size = 20;
                font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
                position = "0, -450";
                halign = "center";
                valign = "top";
            };

            # User
            label  = {
                text = "   $USER";
                color = "$color10";
                font_size = 18;
                font_family = "Inter Display Medium";
                position = "0, 20";
                halign = "center";
                valign = "bottom";
            };

            # uptime
            label = {
                monitor = "";
                text = "cmd[update:60000] echo \"<b> \"$(uptime -p || $Scripts/UptimeNixOS.sh)\" </b>\"";
                color = "$color10";
                font_size = 24;
                font_family = "JetBrains Mono Nerd Font 10";
                position = "0, 0";
                halign = "right";
                valign = "bottom";
            };

            label = {
                text = "cmd[update:3600000] [ -f ~/.cache/.weather_cache ] && cat  ~/.cache/.weather_cache";
                color = "$color10";
                font_size = 24;
                font_family = "JetBrains Mono Nerd Font 10";
                position = "50, 0";
                halign = "left";
                valign = "bottom";
            };

            image = {
                monitor = "";
                path = "$HOME/.config/hypr/wallpaper_effects/.wallpaper_current";
                size = 150;
                rounding = -1;
                border_size = 2;
                border_color = "$color11";
                rotate = 0;
                reload_time = -1;
                position = "0, 180";
                halign = "center";
                valign = "bottom";
            };
        };
    };
}
