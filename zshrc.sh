#adding to .zshrc
echo "Enter Username: "
read username
sed -i -e 's/plugins=(.*)/plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions)/' /home/$username/.zshrc
sed -i -e "s/ZSH_THEME=\".*\"/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g" /home/$username/.zshrc
