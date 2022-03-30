sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload

#pacman packages
sudo pacman -S zsh zsh-completions neovim nodejs npm libreoffice mpv sxiv youtube-dl


#yt-dlp installation
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp




# oh-myzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k



#adding to .zshrc
echo "Enter Username: "
read username
sed -i -e 's/plugins=(.*)/plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions)/' /home/$username/.zshrc

#command to comment no sudo password
#sudo sed -i 's/^%wheel ALL=(ALL) NOPASSWD: ALL/#%wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers
#append without NOPASSWD
#echo "%wheel ALL=(ALL:ALL) ALL" >> /etc/sudoers
