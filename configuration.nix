

{ inputs,config, pkgs, ... }:

{
  imports =  [./hardware-configuration.nix ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = true;

    packageOverrides = pkgs: {
      intel-vaapi-driver = pkgs.intel-vaapi-driver.override { enableHybridCodec = true; };
    };
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;

    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 4444 5555 20 21 9001 5670 ];
      allowedUDPPortRanges = [
        { from = 4000; to = 4007; }
        { from = 8000; to = 8010; }
      ];
    };

  };

  services = {
    printing = {
      enable = true;
      drivers = [ pkgs.hplip ];
    };

    udev.packages = with pkgs; [
      openocd
      (writeTextFile {
        name = "pupil-udev-rules";
        destination = "/etc/udev/rules.d/99-pupil.rules";
        text = ''
          # Pupil Labs eye cameras
          SUBSYSTEM=="video4linux", ATTRS{idVendor}=="0c45", ATTRS{idProduct}=="64ab", GROUP="video", MODE="0660"

          # Pupil Labs world camera
          SUBSYSTEM=="video4linux", ATTRS{idVendor}=="05a3", ATTRS{idProduct}=="9232", GROUP="video", MODE="0660"

          # Règle USB custom
          SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", GROUP="plugdev", MODE="0664"
        '';
      })
    ];

    flatpak.enable = true;

    xserver = {
      enable = true;
      xkb = {
        layout = "fr";
        variant = "azerty";
      };
      desktopManager.xfce.enable = true;
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
      videoDrivers = [ "modesetting" ];
    };
    gvfs.enable = true;
    udisks2.enable = true;
    usbmuxd.enable = true;
    logind.extraConfig = "''
      # don’t shutdown when power button is short-pressed
      HandlePowerKey=ignore
    ''";

    

  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  fonts.packages = with pkgs; [ 
    nerd-fonts.monoid
  ];


  programs = {
    nix-ld = {
      enable = true;

      libraries = with pkgs; [
        libgcc
        libcxx
      ];

    };

    wireshark.enable=true;
    hyprland.enable = true;
    zsh.enable = true;

  };


  console.keyMap = "fr";

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

  xdg.portal = {
   enable = true;
   extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
   xdgOpenUsePortal = true;
  };



  users.extraGroups.plugdev = { };

  users = {
    extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];

    users = {
      hugo = {
        isNormalUser = true;
        description = "Hugo";
        extraGroups = [ "video" "networkmanager" "wheel" "docker" "vboxusers" "wireshark" "scanner" "lp" "plugdev"];
        shell = pkgs.zsh;
      };
      test = {
        isNormalUser = true;
        description = "compte de test";
      };
    };
  };

 
  virtualisation = {
    virtualbox.host.enable = true;
    docker.enable = true;
  };







  environment.systemPackages = with pkgs; [
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     wget
     git
     arc-theme
     inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
     intel-ocl
  ];


  environment.sessionVariables = { LIBVA_DRIVER_NAME = "iHD"; }; 

  hardware = {
    graphics = { 
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver 
        intel-vaapi-driver 
        libvdpau-va-gl
        vpl-gpu-rt
      ];
    };

    sane = {
      enable = true;
      extraBackends = [ pkgs.hplipWithPlugin ];
    };
  };

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  


  system.stateVersion = "25.05"; 

}
