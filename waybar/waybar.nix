{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = import ./modules.nix
    };
  };
}