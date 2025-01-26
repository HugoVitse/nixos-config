{ config, pkgs, ... }:

{
  # TODO please change the username & home directory to your own
  home.username = "hugo";
  home.homeDirectory = "/home/hugo";

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # here is some command line tools I use frequently
    # feel free to add your own or remove some of them

    neofetch
    nnn # terminal file manager

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    eza # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder

    # networking tools
    mtr # A network diagnostic tool
    iperf3
    dnsutils  # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc  # it is a calculator for the IPv4/v6 addresses

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # productivity
    hugo # static site generator
    glow # markdown previewer in terminal

    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
    firefox-devedition
    ags
    discord
    blueman
    rofi
    waybar
    dunst
    swww
    kitty
    vscode
    xfce.thunar 
    pamixer
    libnotify
    brightnessctl
    openssl
    virtualbox
    python39
  ];

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "HugoVitse";
    userEmail = "hugovitse1@gmail.com";
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
    # TODO add your custom bashrc here
    #bashrcExtra = ''
      #export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    #'';

    # set some aliases, feel free to add more or remove some
    shellAliases = {
      k = "kubectl";
      urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
      urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [
          "git"
          "zsh-autosuggestions"
          "zsh-syntax-highlighting"
      ];
      theme = "xiong-chiamiov-plus"; #"blinks"; #"agnoster";
    };

    initExtra = ''
        export ZSH="$HOME/.oh-my-zsh"

        ZSH_THEME="xiong-chiamiov-plus"

        plugins=( 
            git
            zsh-autosuggestions
            zsh-syntax-highlighting
        )

        source $ZSH/oh-my-zsh.sh


        # Display Pokemon-colorscripts
        # Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos


        # Remplace 'path/to/your/file' par le chemin vers ton fichier
        content=$(cat ~/.cache/.theme_mode)

        if [[ "$content" == "Light" ]]; then
            # Remplace 'commande_light' par la commande que tu veux exécuter pour 'Light'
            pokemon-colorscripts --no-title -s -n reshiram
        elif [[ "$content" == "Dark" ]]; then
            # Remplace 'commande_dark' par la commande que tu veux exécuter pour 'Dark'
            pokemon-colorscripts --no-title -s -n zekrom
        else
            echo "Contenu non reconnu : $content"
        fi


        # fastfetch. Will be disabled if above colorscript was chosen to install
        #fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

        # Set-up icons for files/folders in terminal using eza
        alias ls='eza -a --icons'
        alias ll='eza -al --icons'
        alias lt='eza -a --tree --level=1 --icons'

        clear() {
            command clear  # Exécute la commande clear
            # Ajoute ici la commande supplémentaire que tu veux exécuter
            content=$(cat ~/.cache/.theme_mode)
            if [[ "$content" == "Light" ]]; then
            # Remplace 'commande_light' par la commande que tu veux exécuter pour 'Light'
                pokemon-colorscripts --no-title -n reshiram
            elif [[ "$content" == "Dark" ]]; then
            # Remplace 'commande_dark' par la commande que tu veux exécuter pour 'Dark'
              pokemon-colorscripts --no-title -n zekrom
            else
              echo "Contenu non reconnu : $content"
            fi
        }

        # >>> conda initialize >>>
        # !! Contents within this block are managed by 'conda init' !!
        __conda_setup="$('/home/hugo/Data/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
        if [ $? -eq 0 ]; then
            eval "$__conda_setup"
        else
            if [ -f "/home/hugo/Data/anaconda3/etc/profile.d/conda.sh" ]; then
                . "/home/hugo/Data/anaconda3/etc/profile.d/conda.sh"
            else
                export PATH="/home/hugo/Data/anaconda3/bin:$PATH"
            fi
        fi
        unset __conda_setup
    '';
  };


  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  imports = [
    ./hypr/hyprland.nix
    ./hypr/hyprpaper.nix
    ./hypr/hyprlock.nix
    ./hypr/hypridle.nix
  ];
  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
