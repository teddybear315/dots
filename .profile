export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/alacritty
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export XDG_CURRENT_DESKTOP=XFCE
export XDG_CONFIG_DIRS=/etc/xdg
export GH_TOKEN=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
sudo umount /mnt/Windows
sudo mount /dev/nvme0n1p4 /mnt/Windows
sudo umount /mnt/Archive
sudo mount /dev/sde2 /mnt/Archive
sudo umount /mnt/Vault
sudo mount /dev/sdd1 /mnt/Vault
sudo umount /mnt/Games
sudo mount /dev/sdb2 /mnt/Games
sudo umount /mnt/Files
sudo mount /dev/sda4 /mnt/Files
