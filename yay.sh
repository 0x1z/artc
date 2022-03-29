sudo pacman -S git
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R radiation:radiation ./yay-git
cd yay-git
makepkg -si
yay -S libxft-bgra ttf-joypixels