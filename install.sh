cp -r ./ags ~/.config/
sudo nixos-rebuild switch --flake .
rm ./hardware-configuration.nix
sudo cp /etc/nixos/hardware-configuration.nix .