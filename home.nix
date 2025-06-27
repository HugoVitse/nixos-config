{ config, pkgs, inputs, ... }:

{

  home.username = "hugo";
  home.homeDirectory = "/home/hugo";
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  gtk = {
    enable = true;
    theme.name = "Adwaita-dark";
    iconTheme.name = "Papirus";
  };
  # Packages that should be installed to the user profile.
  home.packages = import ./packages.nix { inherit pkgs inputs; };

  # basic configuration of git, please change to your own
  programs = {
    git = {
      enable = true;
      userName = "HugoVitse";
      userEmail = "hugovitse1@gmail.com";
      aliases = {
        add-commit = "!git add -A && git commit -m 'update'";
        add-commit-push = "!git add -A && git commit -m 'update' && git push origin master";
      };
    };
    zsh = import ./zsh.nix;
  };


  home.stateVersion = "25.05";

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
