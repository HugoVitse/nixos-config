

{ inputs,config, pkgs, ... }:

{
  imports =  [./hardware-configuration.nix ];

  nixpkgs.config.allowUnfree = true;
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [

    libstdcxx5
    libgcc
    libcxx

  ];

  fonts.packages = with pkgs; [  nerdfonts];

  networking.hostName = "nixos"; 

  # Enable networking
  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true;
  networking.networkmanager.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];


  time.timeZone = "Europe/Paris";

  i18n.defaultLocale = "fr_FR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.UTF-8";
    LC_IDENTIFICATION = "fr_FR.UTF-8";
    LC_MEASUREMENT = "fr_FR.UTF-8";
    LC_MONETARY = "fr_FR.UTF-8";
    LC_NAME = "fr_FR.UTF-8";
    LC_NUMERIC = "fr_FR.UTF-8";
    LC_PAPER = "fr_FR.UTF-8";
    LC_TELEPHONE = "fr_FR.UTF-8";
    LC_TIME = "fr_FR.UTF-8";
  };

  # Configure keymap in X11
  services.xserver = {
    enable = true;
    xkb = {
      layout = "fr";
      variant = "azerty";
    };
    displayManager.lightdm.enable = true;
    displayManager.lightdm.greeters.gtk = {
      theme.name = "Arc-Dark";
      iconTheme.name = "Papirus";
    };
    displayManager.lightdm.background = "/var/lib/lightdm/background_berserk2.jpg";
    displayManager.lightdm.greeters.gtk.extraConfig = ''
      position=50%,center 75%,center
      default-user-image=/var/lib/lightdm/user.png
    '';
  };

  

  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.usbmuxd.enable = true;
  services.logind.extraConfig = "''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  ''";

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];


  # Configure console keymap
  console.keyMap = "fr";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.hugo = {
    isNormalUser = true;
    description = "Hugo";
    extraGroups = [ "networkmanager" "wheel" "docker" "vboxusers" "wireshark"];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };

  programs.wireshark.enable=true;
  
  virtualisation.virtualbox.host.enable = true;
  virtualisation.docker.enable = true;
  users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];


  users.users.test = {
    isNormalUser = true;
    description = "compte de test";
    packages = with pkgs; [];
  };


  programs.hyprland.enable = true;
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     wget
     git
     arc-theme
     inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
  ];

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 80 443 4444 5555 20 21 ];
    allowedUDPPortRanges = [
      { from = 4000; to = 4007; }
      { from = 8000; to = 8010; }
    ];
  };


  system.stateVersion = "24.11"; # Did you read the comment?

}
