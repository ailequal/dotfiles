##############
# bootstrap.sh
##############


#! /usr/bin/bash
################

# update os && upgrade os
sudo apt -y update && sudo apt -y upgrade

# snaps packages
sudo snap install code --classic
sudo snap install chromium
sudo snap install postman

# apt packages
sudo apt -y install \
  git \
  build-essential \
  youtube-dl \
  tree \
  neofetch \
  kate \
  virtualbox \
  vlc \
  mpv \
  caffeine \
  cheese \
  vagrant \
  ffmpeg \
  htop \
  hub \
  pngquant \
  speedtest-cli \
  konsole \
  vim \
  ksysguard \
  net-tools \
  xclip \
  wavemon

# xfce4-sensors-plugin
sudo apt -y install xfce4-sensors-plugin
sudo chmod u+s /usr/sbin/hddtemp
xfce4-panel -r

# phpbrew dependencies
sudo apt -y install \
  build-essential \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  php7.4-cli \
  php7.4-bz2 \
  pkg-config \
  libcurl4-openssl-dev \
  libonig-dev \
  libzip-dev \
  composer
