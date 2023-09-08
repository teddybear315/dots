sudo apt-get update
sudo apt install neovim
sudo apt install exa
sudo apt install zsh
# opera and spotify skipped because .deb is used for WSL and .arch is bare metal
cp .zshrc ~
cp -r powerlevel10k/* ~/powerlevel10k
cp -r ./.config/ ~/.config/
chsh -s $(which zsh)
p10k configure
