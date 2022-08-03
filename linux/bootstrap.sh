##############
# bootstrap.sh
##############


#! /usr/bin/bash
################

# update os && upgrade os
sudo apt -y update && sudo apt -y upgrade

# snaps packages
sudo apt install snapd
sudo snap install hello-world
sudo snap install 0ad
sudo snap install bovo
sudo snap install code --classic
sudo snap install chromium
sudo snap install marktext
sudo snap install postman
sudo snap install slack
sudo snap install telegram-desktop

# flatpak packages
flatpak install flathub com.google.Chrome

# apt packages
sudo apt -y install caffeine
sudo apt -y install cheese
sudo apt -y install gimp
sudo apt -y install gitg
sudo apt -y install github-desktop
sudo apt -y install gnome-tweaks
sudo apt -y install gpg
sudo apt -y install handbrake
sudo apt -y install htop
sudo apt -y install hub
sudo apt -y install kate
sudo apt -y install konsole
sudo apt -y install lolcat
sudo apt -y install mpv
sudo apt -y install neofetch
sudo apt -y install neovim
sudo apt -y install notepadqq
sudo apt -y install php
sudo apt -y install pip
sudo apt -y install pngquant
sudo apt -y install python
sudo apt -y install speedtest-cli
sudo apt -y install thunar
sudo apt -y install tig
sudo apt -y install tmux
sudo apt -y install tree
sudo apt -y install vagrant
sudo apt -y install vim
sudo apt -y install virtualbox
sudo apt -y install vlc
sudo apt -y install wavemon
sudo apt -y install xclip

# pip packages
sudo pip install --upgrade youtube_dl
