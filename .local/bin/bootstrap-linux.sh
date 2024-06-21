#!/bin/bash

################
# bootstrap.sh #
################



# update os && upgrade os
sudo apt -y update && sudo apt -y upgrade && sudo apt -y autoremove

# apt
sudo apt -y install bat
sudo apt -y install caffeine
sudo apt -y install cheese
sudo apt -y install ffmpeg
sudo apt -y install gimp
sudo apt -y install gitg
sudo apt -y install gnome-shell-extensions
sudo apt -y install gnome-tweaks
sudo apt -y install gpg
sudo apt -y install handbrake
sudo apt -y install htop
sudo apt -y install kate
sudo apt -y install konsole
sudo apt -y install lolcat
sudo apt -y install mpv
sudo apt -y install neofetch
sudo apt -y install notepadqq
sudo apt -y install openssl
sudo apt -y install php
sudo apt -y install pip
sudo apt -y install pngquant
sudo apt -y install python
sudo apt -y install python-is-python3
sudo apt -y install ripgrep
sudo apt -y install speedtest-cli
sudo apt -y install thunar
sudo apt -y install tig
sudo apt -y install tmux
sudo apt -y install tree
# sudo apt -y install vagrant
sudo apt -y install vim
# sudo apt -y install virtualbox
sudo apt -y install vlc
sudo apt -y install wavemon
sudo apt -y install xclip

# cargo
cargo install bob-nvim
cargo install --locked zellij

# snap
sudo snap install 0ad
sudo snap install code --classic
sudo snap install postman
sudo snap install slack
sudo snap install spotify
sudo snap install telegram-desktop

# flatpak
flatpak install flathub org.DolphinEmu.dolphin-emu

# pip
python3 -m pip install -U yt-dlp
