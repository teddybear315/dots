sudo pacman -Syyu
sudo pacman -S nvim exa zsh

cp .zshrc ~
cp .p10k.zsh ~
cp -r powerlevel10k/* ~/powerlevel10k
cp -r ./.config/ ~/.config/
