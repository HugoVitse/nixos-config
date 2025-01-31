cp -r ./ags ~/.config/
rm ./hardware-configuration.nix
sudo cp /etc/nixos/hardware-configuration.nix .
sudo nixos-rebuild switch --flake .