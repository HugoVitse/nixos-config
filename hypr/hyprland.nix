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
        
        #Keybinds
        bind = import ./configs/bind.nix;
        bindel = import ./configs/bindel.nix;
        bindm = import ./configs/bindm.nix;
        binds = import ./configs/binds.nix;
        bindl = import ./configs/bindl.nix;

        #inputs
        input = import ./configs/inputs.nix;
        gestures = import ./configs/gestures.nix;

        #style
        general = import ./configs/general.nix;
        decoration = import ./configs/decoration.nix;
        animations = import ./configs/animations.nix;

        #env variables
        env = import ./configs/env.nix;

        #misc
        dwindle = import ./configs/dwindle.nix;
        monitor=",preferred,auto,1";

        #exec at launch
        exec-once = import ./configs/exec-once.nix; 

    };
  };
}
