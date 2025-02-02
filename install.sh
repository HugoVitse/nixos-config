cp -r ./ags ~/.config/
cp -r kitty.conf ~/.config/kitty
cp .theme_mode ~/.cache/
rm ./hardware-configuration.nix
sudo cp /etc/nixos/hardware-configuration.nix .
sudo nixos-rebuild switch --flake .