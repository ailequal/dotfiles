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
sudo apt -y install \
  caffeine \
  cheese \
  composer \
  github-desktop \
  gnome-tweak-tool \
  htop \
  hub \
  mpv \
  neofetch \
  nodejs \
  notepadqq \
  npm \
  php \
  pip \
  pngquant \
  python \
  speedtest-cli \
  tig \
  tree \
  vagrant \
  vim \
  virtualbox \
  vlc \
  wavemon \
  xclip

# pip packages
sudo pip install --upgrade youtube_dl

# phpbrew dependencies
# sudo apt -y install \
#   build-essential \
#   libbz2-dev \
#   libreadline-dev \
#   libsqlite3-dev \
#   libssl-dev \
#   libxml2-dev \
#   libxslt1-dev \
#   php7.4-bz2 \
#   pkg-config \
#   libcurl4-openssl-dev \
#   libonig-dev \
#   libzip-dev \
