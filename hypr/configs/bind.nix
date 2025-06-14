# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
# Default Keybinds
# visit https://wiki.hyprland.org/Configuring/Binds/ for more info


[
    "CTRL ALT, Delete, exec, hyprctl dispatch exit 0"
    "$mainMod, Q, killactive"
    "$mainMod, F, fullscreen"
    "$mainMod SHIFT, Q, exec, $scriptsDir/KillActiveProcess.sh"
    "$mainMod SHIFT, F, togglefloating"
    "$mainMod ALT, F, exec, hyprctl dispatch workspaceopt allfloat"
    "CTRL ALT, L, exec, $scriptsDir/LockScreen.sh"
    "CTRL ALT, P, exec, $scriptsDir/Wlogout.sh"

    # FEATURES / EXTRAS
    "$mainMod, H, exec, $scriptsDir/KeyHints.sh" # Small help file
    "$mainMod ALT, R, exec, $scriptsDir/Refresh.sh" # Refresh waybar, swaync, rofi
    "$mainMod ALT, E, exec, $scriptsDir/RofiEmoji.sh" # emoji
    "$mainMod, S, exec, $scriptsDir/RofiSearch.sh" # Google search from Rofi
    "$mainMod SHIFT, B, exec, $scriptsDir/ChangeBlur.sh" # Toggle blur settings 
    "$mainMod SHIFT, G, exec, $scriptsDir/GameMode.sh" # animations ON/OFF
    "$mainMod ALT, L, exec, $scriptsDir/ChangeLayout.sh" # Toggle Master or Dwindle Layout
    "$mainMod ALT, V, exec, $scriptsDir/ClipManager.sh" # Clipboard Manager
    "$mainMod SHIFT, N, exec, swaync-client -t -sw" # swayNC panel

    # FEATURES / EXTRAS (UserScripts)
    "$mainMod, E, exec, $UserScripts/QuickEdit.sh" # Quick Edit Hyprland Settings
    "$mainMod SHIFT, M, exec, $UserScripts/RofiBeats.sh" # online music
    "$mainMod, W, exec, $UserScripts/WallpaperSelect.sh" # Select wallpaper to apply
    "$mainMod SHIFT, W, exec, $UserScripts/WallpaperEffects.sh" # Wallpaper Effects by imagemagickWW
    "CTRL ALT, W, exec, $UserScripts/WallpaperRandom.sh" # Random wallpapers
    "$mainMod ALT, O, exec, hyprctl setprop active opaque toggle" #disable opacity to active window

    # Waybar / Bar related
    "$mainMod, B, exec, pkill -SIGUSR1 waybar" # Toggle hide/show waybar 
    "$mainMod CTRL, B, exec, $scriptsDir/WaybarStyles.sh" # Waybar Styles Menu
    "$mainMod ALT, B, exec, $scriptsDir/WaybarLayout.sh" # Waybar Layout Menu

    # Master Layout
    "$mainMod CTRL, D, layoutmsg, removemaster"
    "$mainMod, I, layoutmsg, addmaster"
    "$mainMod, J, layoutmsg, cyclenext"
    "$mainMod, K, layoutmsg, cycleprev"
    "$mainMod, M, exec, hyprctl dispatch splitratio 0.3"
    "$mainMod, P, pseudo" # dwindle
    "$mainMod CTRL, Return, layoutmsg, swapwithmaster"

    # group
    "$mainMod, G, togglegroup"
    "$mainMod CTRL, tab, changegroupactive"  #change focus to another window

    # Cycle windows if floating bring to top
    "ALT, tab, cyclenext"
    "ALT, tab, bringactivetotop"  

    # Special Keys / Hot Keys




    # Screenshot keybindings NOTE: You may need to press Fn key as well
    "$mainMod, Print, exec, $scriptsDir/ScreenShot.sh --now"
    "$mainMod SHIFT, Print, exec, $scriptsDir/ScreenShot.sh --area"
    "$mainMod CTRL, Print, exec, $scriptsDir/ScreenShot.sh --in5" #screenshot in 5 secs
    "$mainMod CTRL SHIFT, Print, exec, $scriptsDir/ScreenShot.sh --in10" #screenshot in 10 secs
    "ALT, Print, exec, $scriptsDir/ScreenShot.sh --active" #take screenshot of active window

    # screenshot with swappy (another screenshot tool)
    "$mainMod SHIFT, S, exec, $scriptsDir/ScreenShot.sh --swappy"

    # Resize windows
    "$mainMod SHIFT, left, resizeactive, -50 0"
    "$mainMod SHIFT, right, resizeactive, 50 0"
    "$mainMod SHIFT, up, resizeactive, 0 -50"
    "$mainMod SHIFT, down, resizeactive, 0 50"

    # Move windows
    "$mainMod CTRL, left, movewindow, l"
    "$mainMod CTRL, right, movewindow, r"
    "$mainMod CTRL, up, movewindow, u"
    "$mainMod CTRL, down, movewindow, d"

    # Move focus with mainMod + arrow keys
    "$mainMod, left, movefocus, l"
    "$mainMod, right, movefocus, r"
    "$mainMod, up, movefocus, u"
    "$mainMod, down, movefocus, d"

    # Workspaces related
    "$mainMod, tab, workspace, m+1"
    "$mainMod SHIFT, tab, workspace, m-1"

    # Special workspace
    "$mainMod SHIFT, U, movetoworkspace, special"
    "$mainMod, U, togglespecialworkspace"

    # The following mappings use the key codes to better support various keyboard layouts
    # 1 is code:10, 2 is code 11, etc
    # Switch workspaces with mainMod + [0-9] 
    "$mainMod, code:10, workspace, 1"
    "$mainMod, code:11, workspace, 2"
    "$mainMod, code:12, workspace, 3"
    "$mainMod, code:13, workspace, 4"
    "$mainMod, code:14, workspace, 5"
    "$mainMod, code:15, workspace, 6"
    "$mainMod, code:16, workspace, 7"
    "$mainMod, code:17, workspace, 8"
    "$mainMod, code:18, workspace, 9"
    "$mainMod, code:19, workspace, 10"

    # Move active window and follow to workspace mainMod + SHIFT [0-9]
    "$mainMod SHIFT, code:10, movetoworkspace, 1"
    "$mainMod SHIFT, code:11, movetoworkspace, 2"
    "$mainMod SHIFT, code:12, movetoworkspace, 3"
    "$mainMod SHIFT, code:13, movetoworkspace, 4"
    "$mainMod SHIFT, code:14, movetoworkspace, 5"
    "$mainMod SHIFT, code:15, movetoworkspace, 6"
    "$mainMod SHIFT, code:16, movetoworkspace, 7"
    "$mainMod SHIFT, code:17, movetoworkspace, 8"
    "$mainMod SHIFT, code:18, movetoworkspace, 9"
    "$mainMod SHIFT, code:19, movetoworkspace, 10"
    "$mainMod SHIFT, bracketleft, movetoworkspace, -1" # brackets [ or ]
    "$mainMod SHIFT, bracketright, movetoworkspace, +1"

    # Move active window to a workspace silently mainMod + CTRL [0-9]
    "$mainMod CTRL, code:10, movetoworkspacesilent, 1"
    "$mainMod CTRL, code:11, movetoworkspacesilent, 2"
    "$mainMod CTRL, code:12, movetoworkspacesilent, 3"
    "$mainMod CTRL, code:13, movetoworkspacesilent, 4"
    "$mainMod CTRL, code:14, movetoworkspacesilent, 5"
    "$mainMod CTRL, code:15, movetoworkspacesilent, 6"
    "$mainMod CTRL, code:16, movetoworkspacesilent, 7"
    "$mainMod CTRL, code:17, movetoworkspacesilent, 8"
    "$mainMod CTRL, code:18, movetoworkspacesilent, 9"
    "$mainMod CTRL, code:19, movetoworkspacesilent, 10"
    "$mainMod CTRL, bracketleft, movetoworkspacesilent, -1" # brackets [ or ]
    "$mainMod CTRL, bracketright, movetoworkspacesilent, +1"

    # Scroll through existing workspaces with mainMod + scroll
    "$mainMod, mouse_down, workspace, e+1"
    "$mainMod, mouse_up, workspace, e-1"
    "$mainMod, period, workspace, e+1"
    "$mainMod, comma, workspace, e-1"

    "ALT, F4, killactive"
    "SUPER,z, exec, firefox-devedition"
    "SUPER,a, exec, kitty"
    " , XF86PowerOff, exec, $scriptsDir/Wlogout.sh"
    "$mainMod,SUPER_L ,exec, pkill rofi || true && ags -t 'overview'"
    "$mainMod, V, togglefloating,"

    "$mainMod ALT, mouse_down, exec, hyprctl keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor | awk '/^float.*/ {print $2 + 0.5}')"
    "$mainMod ALT, mouse_up, exec, hyprctl keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor | awk '/^float.*/ {print $2 - 0.5}')"
    "$mainMod SHIFT, mouse_up, exec, hyprctl keyword cursor:zoom_factor 1"
    "$mainMod ALT, mouse_down, exec, hyprctl keyword cursor:zoom_factor $(awk 'BEGIN {print $(hyprctl getoption cursor:zoom_factor | grep 'float:' | awk '{print $2}') - 0.5}')"
    "$mainMod ALT, mouse_up, exec, hyprctl keyword cursor:zoom_factor $(awk 'BEGIN {print $(hyprctl getoption cursor:zoom_factor | grep 'float:' | awk '{print $2}') + 0.5}')"
]
