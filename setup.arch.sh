sudo pacman -Syyu
sudo pacman -S awesome compton rofi github-cli alacritty wl-clipboard curl neovim exa opera python3
sudo pacman -S zsh zsh-autosuggestions zsh-theme-powerlevel10k

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S spotify picom-git

curl -fLO ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ..
# Shell Setup
cp .profile ~
cp .zshrc ~
mkdir ~/powerlevel10k
cp -r powerlevel10k/* ~/powerlevel10k
cp -r ./.config/ ~/.config/
cp /etc/xdg/awesome/rc.lua ~/.config/awesome/rc.lua

chsh -s $(which zsh)
p10k configure

gh auth login

startx
