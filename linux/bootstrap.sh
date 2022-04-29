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
sudo snap install code --classic
sudo snap install chromium
sudo snap install postman
sudo snap install telegram-desktop
sudo snap install typora

# flatpak packages
# flatpak install flathub com.github.marktext.marktext

# apt packages
sudo apt -y install caffeine
sudo apt -y install cheese
sudo apt -y install composer
sudo apt -y install github-desktop
sudo apt -y install gnome-tweaks
sudo apt -y install htop
sudo apt -y install hub
sudo apt -y install mpv
sudo apt -y install neofetch
sudo apt -y install nodejs
sudo apt -y install notepadqq
sudo apt -y install npm
sudo apt -y install php
sudo apt -y install pip
sudo apt -y install pngquant
sudo apt -y install python
sudo apt -y install speedtest-cli
sudo apt -y install tig
sudo apt -y install tree
sudo apt -y install vagrant
sudo apt -y install vim
sudo apt -y install virtualbox
sudo apt -y install vlc
sudo apt -y install wavemon
sudo apt -y install xclip

# pip packages
sudo pip install --upgrade youtube_dl

# phpbrew dependencies
# sudo apt-y install build-essential
# sudo apt-y install libbz2-dev
# sudo apt-y install libreadline-dev
# sudo apt-y install libsqlite3-dev
# sudo apt-y install libssl-dev
# sudo apt-y install libxml2-dev
# sudo apt-y install libxslt1-dev
# sudo apt-y install php7.4-bz2
# sudo apt-y install pkg-config
# sudo apt-y install libcurl4-openssl-dev
# sudo apt-y install libonig-dev
# sudo apt-y install libzip-dev
