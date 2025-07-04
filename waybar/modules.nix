{
    layer= "top";
    exclusive= true ;
    passthrough= false ;
    position= "top" ;
    spacing= 3 ;
    fixed-center= true ;
    ipc= true ;
    margin-top= 3 ;
    margin-left= 8 ;
    margin-right= 8 ;

    modules-left= [
        "custom/menu" 
        "custom/light_dark" 
        "custom/separator#dot-line" 
        "power-profiles-daemon" 
        "group/mobo_drawer" 
        "custom/separator#blank" 
        "group/laptop" 
        "custom/separator#line" 
        "custom/weather" 
    ];

    modules-center= [
        "custom/swaync" 
        "custom/separator#dot-line" 
        "clock" 
        "custom/separator#line" 
        "hyprland/workspaces#kanji" 
        "custom/separator#dot-line" 
        "network#speed" 
    ];  

    modules-right= [
        "group/connections" 
        "custom/separator#line" 
        "tray" 
        "mpris"  
        "group/audio" 
        "custom/separator#line" 
        "keyboard-state" 
        "custom/keyboard" 
        "custom/lock" 
        "custom/power" 
    ]; 


    "custom/weather"= {
        "format"= "{}";
        "format-alt"= "{alt}= {}";
        "format-alt-click"= "click";
        "interval"= 3600;
        "return-type"= "json";
        "exec"= "~/nixos-config/UserScripts/Weather.sh";
        "exec-if"= "ping wttr.in -c1";
        "tooltip"= true;
    };
    "temperature"= {
        "interval"= 10;
        "tooltip"= true;
        "hwmon-path"= [
            "/sys/class/hwmon/hwmon1/temp1_input"
            "/sys/class/thermal/thermal_zone0/temp"
        ];
        "critical-threshold"= 82;
        "format-critical"= "{temperatureC}°C {icon}";
        "format"= "{temperatureC}°C {icon}";
        "format-icons"= [
            "󰈸"
        ];
        "on-click-right"= "kitty --title nvtop sh -c 'nvtop'";
    };
    "temperature#vertical"= {
        "interval"= 10;
        "tooltip"= true;
        "hwmon-path"= [
            "/sys/class/hwmon/hwmon1/temp1_input"
            "/sys/class/thermal/thermal_zone0/temp"
        ];
        "critical-threshold"= 80;
        "format-critical"= "{icon}\n{temperatureC}°C";
        "format"= " {icon}";
        "format-icons"= [
            "󰈸"
        ];
        "on-click-right"= "kitty --title nvtop sh -c 'nvtop'";
    };


    "hyprland/workspaces"= {
        "active-only"= false;
        "all-outputs"= true;
        "format"= "{icon}";
        "show-special"= false;
        "on-click"= "activate";
        "on-scroll-up"= "hyprctl dispatch workspace e+1";
        "on-scroll-down"= "hyprctl dispatch workspace e-1";
        "persistent-workspaces"= {
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
        };
        "format-icons"= {
            "active"= "";
            "default"= "";
        };
    };

    "hyprland/workspaces#roman"= {
        "active-only"= false;
        "all-outputs"= true;
        "format"= "{icon}";
        "show-special"= false;
        "on-click"= "activate";
        "on-scroll-up"= "hyprctl dispatch workspace e+1";
        "on-scroll-down"= "hyprctl dispatch workspace e-1";
        "persistent-workspaces"= {
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
        };
        "format-icons"= {
            "1"= "I";
            "2"= "II";
            "3"= "III";
            "4"= "IV";
            "5"= "V";
            "6"= "VI";
            "7"= "VII";
            "8"= "VIII";
            "9"= "IX";
            "10"= "X";
        };
    };

    "hyprland/workspaces#pacman"= {
        "active-only"= false;
        "all-outputs"= true;
        "on-click"= "activate";
        "on-scroll-up"= "hyprctl dispatch workspace e+1";
        "on-scroll-down"= "hyprctl dispatch workspace e-1";
        "show-special"= false;
        "persistent-workspaces"= {
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
        };
        "format"= "{icon}";
        "format-icons"= {
                "active"= "<span font='12'>󰮯</span>";
                "empty"= "<span font='8'></span>";
                "default"= "󰊠";
        };
    };

    "hyprland/workspaces#kanji"= {
        "disable-scroll"= true;
        "show-special"= false;
        "all-outputs"= true;
        "format"= "{icon}";
        "persistent-workspaces"= {
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
        };
        "format-icons"= {
            "1"= "一";
            "2"= "二";
            "3"= "三";
            "4"= "四";
            "5"= "五";
            "6"= "六";
            "7"= "七";
            "8"= "八";
            "9"= "九";
            "10"= "十";
        };
    };

    "hyprland/workspaces#4"= {
        "format"= [
            "{name}"
            "{name} {icon} "
        ];
        "show-special"= false;
        "on-click"= "activate";
        "on-scroll-up"= "hyprctl dispatch workspace e+1";
        "on-scroll-down"= "hyprctl dispatch workspace e-1";
        "all-outputs"= true;
        "sort-by-number"= true;
        "format-icons"= {
            "1"= " ";
            "2"= " ";
            "3"= " ";
            "4"= " ";
            "5"= " ";
            "6"= " ";
            "7"= "";
            "8"= " ";
            "9"= "";
            "10"= "10";
            "focused"= "";
            "default"= "";
        };
    };

    "hyprland/workspaces#rw"= {
        "disable-scroll"= true;
        "all-outputs"= true;
        "warp-on-scroll"= false;
        "sort-by-number"= true;
        "show-special"= false;
        "on-click"= "activate";
        "on-scroll-up"= "hyprctl dispatch workspace e+1";
        "on-scroll-down"= "hyprctl dispatch workspace e-1";
        "format"= "{icon} {windows}";
        "format-window-separator"= " ";
        "window-rewrite-default"= " ";
        "window-rewrite"= {
            "title<.*youtube.*>"= " ";
            "title<.*amazon.*>"= " ";
            "title<.*reddit.*>"= " ";
            "title<.*Picture-in-Picture.*>"= " ";
            "class<firefox>"= " ";
            "class<kitty>"= " ";
            "class<kitty-dropterm>"= " ";
            "class<konsole>"= " ";
            "class<Chromium>"= "<span font='12'> </span>";
            "class<org.telegram.desktop|io.github.tdesktop_x64.TDeskto>"= "<span font='12'> </span>";
            "class<[Ss]potify>"= "<span font='12'> </span>";
            "class<VSCode|code-url-handler>"= "<span font='12'>󰨞</span>";
            "class<thunar>"= "󰝰 ";
            "class<discord>"= " ";
            "class<WebCord>"= " ";
            "class<subl>"= "󰅳 ";
            "class<celluloid>"= " ";
            "class<Cider>"= "󰎆 ";
            "class<virt-manager>"= " ";
            "class<code-oss>"= "󰨞 ";
            "class<codium|codium-url-handler|VSCodium>"= "󰨞 ";
            "class<codeblocks>"= "󰅩 ";
            "class<mousepad>"= " ";
            "class<libreoffice-writer>"= " ";
            "class<libreoffice-startcenter>"= "󰏆 ";
            "class<com.obsproject.Studio>"= " ";
            };
    };

    "hyprland/workspaces#cam"= {
        "active-only"=false;
        "all-outputs"= true;
        "format"= "{icon}";
        "show-special"= false;
        "on-click"= "activate";
        "on-scroll-up"= "hyprctl dispatch workspace e+1";
        "on-scroll-down"= "hyprctl dispatch workspace e-1";
        "persistent-workspaces"={
            "1"= [];
            "2"= [];
            "3"= [];
            "4"= [];
            "5"= [];
        };
            "format-icons"= {
            "1"= "Uno";
            "2"= "Due";
            "3"= "Tre";
            "4"= "Quattro";
            "5"= "Cinque";
            "6"="Sei";
            "7"="Sette";
            "8"="Otto";
            "9"="Nove";
            "10"="Dieci";
        };	
    };

    "group/motherboard"= {
        "orientation"= "horizontal";
        "modules"= [
            "cpu"
            "memory"
            "temperature"
            "disk"
        ];
    };
    "group/mobo_drawer"= {
        "orientation"= "inherit";
        "drawer"= {
            "transition-duration"= 500;
            "children-class"= "cpu";
            "transition-left-to-right"= true;
            };
        "modules"= [
            "temperature"		
            "cpu"
            "memory"
            "disk"
        ];
    };
    "group/laptop"= {
        "orientation"= "inherit";
        "modules"= [
            "backlight"
            "battery"
        ];
    };
    "group/audio"= {
        "orientation"= "inherit";
        "drawer"= {
            "transition-duration"= 500;
            "children-class"= "pulseaudio";
            "transition-left-to-right"= true;
            };
        "modules"= [
            "pulseaudio"
            "pulseaudio#microphone"
        ];
    };
    "group/connections"= {
        "orientation"= "inherit";
        "drawer"= {
            "transition-duration"= 500;
            "children-class"= "bluetooth";
            "transition-left-to-right"= true;
            };
        "modules"= [
            "network"
            "bluetooth"
        ];
    };
    "backlight"= {
        "interval"= 2;
        "align"= 0;
        "rotate"= 0;
        "format-icons"= [
            " "
            " "
            " "
            "󰃝 "
            "󰃞 "
            "󰃟 "
            "󰃠 "
        ];
        "format"= "{icon}";
        "tooltip-format"= "backlight {percent}%";
        "icon-size"= 10;
        "on-click"= "";
        "on-click-middle"= "";
        "on-click-right"= "";
        "on-update"= "";
        "on-scroll-up"= "~/nixos-config/scripts/Brightness.sh --inc";
        "on-scroll-down"= "~/nixos-config/scripts/Brightness.sh --dec";
        "smooth-scrolling-threshold"= 1;
    };
    "backlight#2"= {
    "device"= "intel_backlight";
    "format"= "{icon} {percent}%";
    "format-icons"= ["" ""];
    };
    "battery"= {
        "align"= 0;
        "rotate"= 0;
        "full-at"= 100;
        "design-capacity"= false;
        "states"= {
            "good"= 95;
            "warning"= 30;
            "critical"= 15;
        };
        "format"= "{icon} {capacity}%";
        "format-charging"= " {capacity}%";
        "format-plugged"= "󱘖 {capacity}%";
        "format-alt-click"= "click";
        "format-full"= "{icon} Full";
        "format-alt"= "{icon} {time}";
        "format-icons"= [
            "󰂎" "󰁺"  "󰁻"  "󰁼"  "󰁽"  "󰁾"  "󰁿"  "󰂀"  "󰂁"  "󰂂"  "󰁹"
        ];
        "format-time"= "{H}h {M}min";
        "tooltip"= true;
        "tooltip-format"= "{timeTo} {power}w";
        "on-click-middle"= "~/nixos-config/scripts/ChangeBlur.sh";
        "on-click-right"= "~/nixos-config/scripts/Wlogout.sh";
    };
    "bluetooth"= {
        "format"= "";
        "format-disabled"= "󰂳";
        "format-connected"= "󰂱 {num_connections}";
        "tooltip-format"= " {device_alias}";
        "tooltip-format-connected"= "{device_enumerate}";
        "tooltip-format-enumerate-connected"= " {device_alias} 󰂄{device_battery_percentage}%";
        "tooltip"= true;
        "on-click"= "blueman-manager";
    };
    "clock"= {
        "interval"=1;
        "format"= " {:%H:%M:%S}";
        "format-alt"= " {:%H:%M   %Y, %d %B, %A}";
        "tooltip-format"= "<tt><small>{calendar}</small></tt>";
        "calendar"= {
            "mode"= "year";
            "mode-mon-col"= 3;
            "weeks-pos"= "right";
            "on-scroll"= 1;
            "format"= {
                "months"= "<span color='#ffead3'><b>{}</b></span>";
                "days"= "<span color='#ecc6d9'><b>{}</b></span>";
                "weeks"= "<span color='#99ffdd'><b>W{}</b></span>";
                "weekdays"= "<span color='#ffcc66'><b>{}</b></span>";
                "today"= "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
        };
    };
    "actions"= {
        "on-click-right"= "mode";
        "on-click-forward"= "tz_up";
        "on-click-backward"= "tz_down";
        "on-scroll-up"= "shift_up";
        "on-scroll-down"= "shift_down";
    };
    "clock#2"= {
        "format"= "  {=%H=%M}";
        "format-alt"= "{=%A  |  %H=%M  |  %e %B}";
        "tooltip-format"= "<big>{=%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    };
    "clock#3"= {
        "format"= "{=%H=%M - %d/%b}";
        "tooltip"= false;
    };
    "clock#4"= {
        "interval"= 60;
        "format"= "{=%B | %a %d; %Y | %H=%M}";
        "format-alt"= "{=%a %b %d; %G}";
        "tooltip-format"= "<big>{=%B %Y}</big>\n<tt><small>{calendar}</small></tt>";
    };
    "clock#5"= {
        "format"= "{=%a %d | %H=%M}";
        "format-alt"= "{=%A; %d %B; %Y (%R)}";
    };
    "cpu"= {
        "format"= "{usage}% 󰍛";
        "interval"= 1;
        "min-length"= 5;
        "format-alt-click"= "click";
        "format-alt"= "{icon0}{icon1}{icon2}{icon3} {usage=>2}% 󰍛";
        "format-icons"= [
            "▁"  "▂"  "▃"  "▄"  "▅"  "▆"  "▇"  "█"
        ];
        "on-click-right"= "gnome-system-monitor";
    };
    "disk"= {
        "interval"= 30;
        "path"= "/";
        "format"= "{percentage_used}% 󰋊";
        "tooltip-format"= "{used} used out of {total} on {path} ({percentage_used}%)";
    };
    "hyprland/language"= {
        "format"= "Lang= {}";
        "format-en"= "US";
        "format-tr"= "Korea";
        "keyboard-name"= "at-translated-set-2-keyboard";
        "on-click"= "hyprctl switchxkblayout $SET_KB next";
    };
    "hyprland/submap"= {
        "format"= "<span style=\"italic\">  {}</span>";
        "tooltip"= false;
    };

    "hyprland/window"= {
        "format"= "{}";
        "rewrite"= {
            "(.*) - Mozilla Firefox"= "🌎 $1";
            "(.*) - zsh"= "> [$1]";
        };
    };

    "idle_inhibitor"= {
        "format"= "{icon}";
        "format-icons"= {
            "activated"= " ";
            "deactivated"= " ";
        };
    };
    "keyboard-state"= {
        "capslock"= true;
        "format"= {
            "numlock"= "N {icon}";
            "capslock"= "󰪛 {icon}";
        };
        "format-icons"= {
            "locked"= "";
            "unlocked"= "";
        };
    };
    "memory"= {
        "interval"= 10;
        "format"= "{used=0.1f}G 󰾆";
        "format-alt"= "{percentage}% 󰾆";
        "format-alt-click"= "click";
        "tooltip"= true;
        "tooltip-format"= "{used=0.1f}GB/{total=0.1f}G";
        "on-click-right"= "kitty --title btop sh -c 'btop'";
    };
    "mpris"= {
        "interval"= 10;
        "format"= "{player_icon} ";
        "format-paused"= "{status_icon} <i>{dynamic}</i>";
        "on-click-middle"= "playerctl play-pause";
        "on-click"= "playerctl previous";
        "on-click-right"= "playerctl next";
        "scroll-step"= 5.0;
        "on-scroll-up"= "~/nixos-config/scripts/Volume.sh --inc";
        "on-scroll-down"= "~/nixos-config/scripts/Volume.sh --dec";
        "smooth-scrolling-threshold"= 1;
        "player-icons"= {
            "chromium"= "";
            "default"= "";
            "firefox"= "";
            "kdeconnect"= "";
            "mopidy"= "";
            "mpv"= "󰐹";
            "spotify"= "";
            "vlc"= "󰕼";
        };
        "status-icons"= {
            "paused"= "󰐎";
            "playing"= "";
            "stopped"= "";
        };
        "max-length"= 30;
    };
    "network"= {
        "format"= "{ifname}";
        "format-wifi"= "{icon}";
        "format-ethernet"= "󰌘";
        "format-disconnected"= "󰌙";
        "tooltip-format"= "{ipaddr}  {bandwidthUpBits}  {bandwidthDownBits}";
        "format-linked"= "󰈁 {ifname} (No IP)";
        "tooltip-format-wifi"= "{essid} {icon} {signalStrength}%";
        "tooltip-format-ethernet"= "{ifname} 󰌘";
        "tooltip-format-disconnected"= "󰌙 Disconnected";
        "max-length"= 30;
        "format-icons"= [
            "󰤯" "󰤟" "󰤢" "󰤥" "󰤨"
        ];
        "on-click-right"= "kitty nmtui";
    };
    "network#speed"= {
        "interval"= 1;
        "format"= "{ifname}";
        "format-wifi"= "{icon}  {bandwidthUpBytes}  {bandwidthDownBytes}";
        "format-ethernet"= "󰌘  {bandwidthUpBytes}  {bandwidthDownBytes}";
        "format-disconnected"= "󰌙";
        "tooltip-format"= "{ipaddr}";
        "format-linked"= "󰈁 {ifname} (No IP)";
        "tooltip-format-wifi"= "{essid} {icon} {signalStrength}%";
        "tooltip-format-ethernet"= "{ifname} 󰌘";
        "tooltip-format-disconnected"= "󰌙 Disconnected";
        "min-length"= 24;
        "max-length"= 24;
        "format-icons"= [
            "󰤯" "󰤟" "󰤢" "󰤥" "󰤨"
        ];
    };
    "power-profiles-daemon"= {
    "format"= "{icon}";
    "tooltip-format"= "Power profile= {profile}\nDriver= {driver}";
    "tooltip"= true;
    "format-icons"= {
        "default"= "";
        "performance"= "";
        "balanced"= "";
        "power-saver"= "";
    };
    };
    "pulseaudio"= {
        "format"= "{icon} {volume}%";
        "format-bluetooth"= "{icon} 󰂰 {volume}%";
        "format-muted"= "󰖁";
        "format-icons"= {
            "headphone"= "";
            "hands-free"= "";
            "headset"= "";
            "phone"= "";
            "portable"= "";
            "car"= "";
            "default"= [
                "" "" "󰕾"  ""
            ];
            "ignored-sinks"= [
                "Easy Effects Sink"
            ];
        };
        "scroll-step"= 5.0;
        "on-click"= "~/nixos-config/scripts/Volume.sh --toggle";
        "on-click-right"= "pavucontrol -t 3";
        "on-scroll-up"= "~/nixos-config/scripts/Volume.sh --inc";
        "on-scroll-down"= "~/nixos-config/scripts/Volume.sh --dec";
        "tooltip-format"= "{icon} {desc} | {volume}%";
        "smooth-scrolling-threshold"= 1;
    };
    "pulseaudio#1"= {
    "format"= "{icon} {volume}%";
    "format-bluetooth"= "{icon} {volume}%";
    "format-bluetooth-muted"= " {icon}";
    "format-muted"= "󰸈";
    "format-icons"= {
        "headphone"= "";
        "hands-free"= "";
        "headset"= "";
        "phone"= "";
        "portable"= "";
        "car"= "";
        "default"= ["" "" ""];
        };
    "on-click"= "pamixer --toggle-mute";
    "on-click-right"= "pavucontrol -t 3";
    "tooltip"= true;
    "tooltip-format"= "{icon} {desc} | {volume}%";
    };
    "pulseaudio#microphone"= {
        "format"= "{format_source}";
        "format-source"= " {volume}%";
        "format-source-muted"= "";
        "on-click"= "~/nixos-config/scripts/Volume.sh --toggle-mic";
        "on-click-right"= "pavucontrol -t 4";
        "on-scroll-up"= "~/nixos-config/scripts/Volume.sh --mic-inc";
        "on-scroll-down"= "~/nixos-config/scripts/Volume.sh --mic-dec";
        "tooltip-format"= "{source_desc} | {source_volume}%";
        "scroll-step"= 5;
    };
    "tray"= {
        "icon-size"= 18;
        "spacing"= 4;
    };
    "wireplumber"= {
        "format"= "{icon} {volume} %";
        "format-muted"= " Mute";
        "on-click"= "~/nixos-config/scripts/Volume.sh --toggle";
        "on-click-right"= "pavucontrol -t 3";
        "on-scroll-up"= "~/nixos-config/scripts/Volume.sh --inc";
        "on-scroll-down"= "~/nixos-config/scripts/Volume.sh --dec";
        "format-icons"= [
            "" "" "󰕾" ""
        ];
    };
    "wlr/taskbar"= {
        "format"= "{icon} {name}";
        "icon-size"= 16;
        "all-outputs"= false;
        "tooltip-format"= "{title}";
        "on-click"= "activate";
        "on-click-middle"= "close";
        "ignore-list"= [
            "wofi"
            "rofi"
            "kitty"
            "kitty-dropterm"
        ];
    };
    "custom/cycle_wall"= {
        "format"= " ";
        "on-click"= "~/nixos-config/UserScripts/WallpaperSelect.sh";
        "on-click-right"= "~/nixos-config/UserScripts/WallpaperRandom.sh";
        "on-click-middle"= "~/nixos-config/scripts/WaybarStyles.sh";
        "tooltip"= true;
        "tooltip-format"= "Left Click= Wallpaper Menu\nMiddle Click= Random wallpaper\nRight Click= Waybar Styles Menu";
    };
    "custom/hint"= {
        "format"= "󰺁 HINT!";
        "on-click"= "~/nixos-config/scripts/KeyHints.sh";
        "tooltip"= true;
        "tooltip-format"= "󱧣 Quick Tips";
    };
    "custom/keyboard"= {
        "exec"= "cat ~/.cache/kb_layout";
        "interval"= 1;
        "format"= " {}";
        "on-click"= "~/nixos-config/scripts/SwitchKeyboardLayout.sh";
    };
    "custom/light_dark"= {
        "format"= "󰔎";
        "on-click"= "~/nixos-config/scripts/DarkLight.sh";
        "on-click-right"= "~/nixos-config/scripts/WaybarStyles.sh";
        "on-click-middle"= "~/nixos-config/UserScripts/WallpaperSelect.sh";
        "tooltip"= true;
        "tooltip-format"= "Left Click= Switch Dark-Light Themes\nMiddle Click= Wallpaper Menu\nRight Click= Waybar Styles Menu";
    };
    "custom/lock"= {
        "format"= "󰌾";
        "on-click"= "~/nixos-config/scripts/LockScreen.sh";
        "tooltip"= true;
        "tooltip-format"= "󰷛 Screen Lock";

    };
    "custom/menu"= {
        "format"= "";
        "on-click"= "pkill rofi || rofi -show drun -modi run;drun;filebrowser;window";
        "on-click-middle"= "~/nixos-config/UserScripts/WallpaperSelect.sh";
        "on-click-right"= "~/nixos-config/scripts/WaybarLayout.sh";
        "tooltip"= true;
        "tooltip-format"= "Left Click= Rofi Menu\nMiddle Click= Wallpaper Menu\nRight Click= Waybar Layout Menu";
    };
    "custom/cava_mviz"= {
        "exec"= "~/nixos-config/scripts/WaybarCava.sh";
        "format"= "{}";
    };
    "custom/playerctl"= {
        "format"= "<span>{}</span>";
        "return-type"= "json";
        "max-length"= 35;
        "exec"= "playerctl -a metadata --format '{\"text\"= \"{{artist}} ~ {{markup_escape(title)}}\"; \"tooltip\"= \"{{playerName}} = {{markup_escape(title)}}\"; \"alt\"= \"{{status}}\"; \"class\"= \"{{status}}\"}' -F";
        "on-click-middle"= "playerctl play-pause";
        "on-click"= "playerctl previous";
        "on-click-right"= "playerctl next";
        "scroll-step"= 5.0;
        "on-scroll-up"= "~/nixos-config/scripts/Volume.sh --inc";
        "on-scroll-down"= "~/nixos-config/scripts/Volume.sh --dec";
        "smooth-scrolling-threshold"= 1;
    };
    "custom/power"= {
        "format"= "⏻ ";
        "on-click"= "~/nixos-config/scripts/Wlogout.sh";
        "on-click-right"= "~/nixos-config/scripts/ChangeBlur.sh";
        "tooltip"= true;
        "tooltip-format"= "Left Click= Logout Menu\nRight Click= Change Blur";
    };
    "custom/swaync"= {
        "tooltip"= true;
        "tooltip-format"= "Left Click= Launch Notification Center\nRight Click= Do not Disturb";
        "format"= "{icon} {}";
        "format-icons"= {
            "notification"= "<span foreground='red'><sup></sup></span>";
            "none"= "";
            "dnd-notification"= "<span foreground='red'><sup></sup></span>";
            "dnd-none"= "";
            "inhibited-notification"= "<span foreground='red'><sup></sup></span>";
            "inhibited-none"= "";
            "dnd-inhibited-notification"= "<span foreground='red'><sup></sup></span>";
            "dnd-inhibited-none"= "";
        };
        "return-type"= "json";
        "exec-if"= "which swaync-client";
        "exec"= "swaync-client -swb";
        "on-click"= "sleep 0.1 && swaync-client -t -sw";
        "on-click-right"= "swaync-client -d -sw";
        "escape"= true;
    };
    "custom/updater"= {
        "format"= " {}";
        "exec"= "checkupdates | wc -l";
        "exec-if"= "[[ $(checkupdates | wc -l) ]]";
        "interval"= 15;
        "on-click"= "if command -v paru &> /dev/null; then kitty -T update paru -Syu; else kitty -T update yay -Syu; fi && notify-send 'The system has been updated'";
        "tooltip"= true;
        "tooltip-format"= "Left Click= Update System\nArch Linux Only";
    };
    "custom/separator#dot"= {
        "format"= "";
        "interval"= "once";
        "tooltip"= false;
    };
    "custom/separator#dot-line"= {
        "format"= "";
        "interval"= "once";
        "tooltip"= false;
    };
    "custom/separator#line"= {
        "format"= "|";
        "interval"= "once";
        "tooltip"= false;
    };
    "custom/separator#blank"= {
        "format"= "";
        "interval"= "once";
        "tooltip"= false;
    };
    "custom/separator#blank_2"= {
        "format"= "  ";
        "interval"= "once";
        "tooltip"= false;
    };
    "custom/separator#blank_3"= {
        "format"= "   ";
        "interval"= "once";
        "tooltip"= false;
    };
    "backlight#vertical"= {
        "interval"= 2;
        "align"= 0.35;
        "rotate"= 1;
        "format"= "{icon}";
        "format-icons"= [
            ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""  ""
        ];
        "on-click"= "";
        "on-click-middle"= "";
        "on-click-right"= "";
        "on-update"= "";
        "on-scroll-up"= "~/nixos-config/scripts/Brightness.sh --inc";
        "on-scroll-down"= "~/nixos-config/scripts/Brightness.sh --dec";
        "smooth-scrolling-threshold"= 1;
        "tooltip-format"= "{percent}%";
    };
    "clock#vertical"= {
        "format"= "\n{=%H\n%M\n%S\n\n \n%d\n%m\n%y}";
        "interval"= 1;
        "tooltip"= true;
        "tooltip-format"= "{calendar}";
        "calendar"= {
            "mode"= "year";
            "mode-mon-col"= 3;
            "format"= {
                "today"= "<span color='#0dbc79'>{}</span>";
            };
        };
    };
    "cpu#vertical"= {
        "format"= "󰍛\n{usage}%";
        "interval"= 1;
        "on-click-right"= "gnome-system-monitor";
    };
    "memory#vertical"= {
        "interval"= 10;
        "format"= "󰾆\n{percentage}%";
        "format-alt"= "󰾆\n{used=0.1f}G";
        "format-alt-click"= "click";
        "tooltip"= true;
        "tooltip-format"= "{used=0.1f}GB/{total=0.1f}G";
        "on-click-right"= "kitty --title btop sh -c 'btop'";
    };
    "pulseaudio#vertical"= {
        "format"= "{icon}";
        "format-bluetooth"= "󰂰";
        "format-muted"= "󰖁";
        "format-icons"= {
            "headphone"= "";
            "hands-free"= "";
            "headset"= "";
            "phone"= "";
            "portable"= "";
            "car"= "";
            "default"= [
                "" "" "󰕾" ""
            ];
            "tooltip-format"= "{icon} {desc} | {volume}%";
            "ignored-sinks"= [
                "Easy Effects Sink"
            ];
        };
        "scroll-step"= 5.0;
        "on-click"= "~/nixos-config/scripts/Volume.sh --toggle";
        "on-click-right"= "pavucontrol -t 3";
        "on-scroll-up"= "~/nixos-config/scripts/Volume.sh --inc";
        "on-scroll-down"= "~/nixos-config/scripts/Volume.sh --dec";
        "tooltip-format"= "{icon} {desc} | {volume}%";
        "smooth-scrolling-threshold"= 1;
    };
    "pulseaudio#microphone_vertical"= {
        "format"= "{format_source}";
        "format-source"= "󰍬";
        "format-source-muted"= "󰍭";
        "on-click-right"= "pavucontrol";
        "on-click"= "~/nixos-config/scripts/Volume.sh --toggle-mic";
        "on-scroll-up"= "~/nixos-config/scripts/Volume.sh --mic-inc";
        "on-scroll-down"= "~/nixos-config/scripts/Volume.sh --mic-dec";
        "max-volume"= 100;
        "tooltip"= true;
        "tooltip-format"= "{source_desc} | {source_volume}%";
    };
    "custom/power_vertical"= {
        "format"= "⏻";
        "exec"= "echo ; echo 󰟡 power // blur";
        "on-click"= "~/nixos-config/scripts/Wlogout.sh";
        "on-click-right"= "~/nixos-config/scripts/ChangeBlur.sh";
        "interval"= 86400;
        "tooltip"= true;
    };
}