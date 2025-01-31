cp -r ./ags ~/.config/
sudo nixos-rebuild switch --flake .
sudo cp /etc/nixos/hardware-configuration.nix .