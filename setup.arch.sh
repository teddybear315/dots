sudo pacman -Syyu
sudo pacman -S neovim exa opera
sudo pacman -S zsh zsh-autosuggestions zsh-theme-powerlevel10k

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S spotify

cp .zshrc ~
cp -r powerlevel10k/* ~/powerlevel10k
cp -r ./.config/ ~/.config/

chsh -s $(which zsh)
p10k configure
