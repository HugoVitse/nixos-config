cp -r ./ags ~/.config/
cp -r kitty.conf ~/.config/kitty

mkdir ~/Pictures
mkdir ~/Pictures/wallpapers
mkdir ~/Pictures/wallpapers/Dynamic-Wallpapers
mkdir ~/Pictures/wallpapers/Dynamic-Wallpapers/Light
mkdir ~/Pictures/wallpapers/Dynamic-Wallpapers/Dark
cp ./pictures/blacklagoon.png ~/Pictures/wallpapers/Dynamic-Wallpapers/Dark
cp ./pictures/blacklagoon.jpg ~/Pictures/wallpapers/Dynamic-Wallpapers/Light

rm ./hardware-configuration.nix
sudo cp /etc/nixos/hardware-configuration.nix .
sudo nixos-rebuild switch --flake .

sudo cp ./pictures/background_berserk2.jpg /var/lib/lightdm/
sudo cp ./pictures/user.png /var/lib/lightdm/

sudo nixos-rebuild switch --flake .