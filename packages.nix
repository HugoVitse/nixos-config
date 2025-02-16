pkgs : with pkgs;[
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
    oh-my-zsh
    swappy
    slurp
    grim
    gitlab
    wlogout
    libimobiledevice
    usbmuxd
    libsForQt5.kdeconnect-kde
    libmtp 
    simple-mtpfs
    ifuse
	gobuster
	networkmanagerapplet
	john
	lightdm
	lightdm-gtk-greeter
	exiftool
	playerctl
	papirus-icon-theme
	thc-hydra
	tcpdump
	wireshark
	inetutils
	burpsuite
	mysql84
	hexedit
	pngcheck
	intel-ocl
	docker-compose
]
