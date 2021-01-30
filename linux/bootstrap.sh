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
sudo snap install youtube-dl
sudo snap install typora
sudo snap install hub --classic

# apt packages
sudo apt -y install \
  tree \
  neofetch \
  virtualbox \
  vlc \
  mpv \
  caffeine \
  cheese \
  gnome-tweak-tool \
  vagrant \
  htop \
  lm-sensors \
  github-desktop \
  notepadqq \
  pngquant \
  speedtest-cli \
  tig \
  vim \
  xclip \
  wavemon \
  php7.4-cli \
  composer \
  nodejs

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
