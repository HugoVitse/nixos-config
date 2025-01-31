{ config, pkgs, ... }:

{
  # TODO please change the username & home directory to your own
  home.username = "hugo";
  home.homeDirectory = "/home/hugo";

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  # Packages that should be installed to the user profile.
  home.packages = import ./packages.nix pkgs;

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "HugoVitse";
    userEmail = "hugovitse1@gmail.com";
    aliases = {
      add-commit = "!git add -A && git commit -m 'update'";
      add-commit-push = "!git add -A && git commit -m 'update' && git push origin master";
    };
  };

  # starship - an customizable prompt for any shell
  programs.starship = {
    enable = true;
    # custom settings
    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };

  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;
        draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;

    shellAliases = {
      python-shell = "nix-shell ~/nixos-config/dev-shells/python-shell.nix";
      apt = "./install.sh";
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config";
      urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
      urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
    };

    initExtra = import ./zshrc.nix;
  };



  home.stateVersion = "24.11";

  imports = [
    ./hypr/hyprland.nix
    ./hypr/hyprpaper.nix
    ./hypr/hyprlock.nix
    ./hypr/hypridle.nix
    ./waybar/waybar.nix
   ];
  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
