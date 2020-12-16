##############
# bootstrap.sh
##############


#! /bin/bash
############

# update homebrew && upgrade homebrew
brew update && brew upgrade

# casks
brew cask install \
  appcleaner \
  coconutbattery \
  cyberduck \
  firefox \
  homebrew/cask-versions/firefox-developer-edition \
  gitkraken \
  google-backup-and-sync \
  google-chrome \
  handbrake \
  istat-menus \
  iterm2 \
  keepingyouawake \
  keka \
  mactracker \
  mark-text \
  monitorcontrol \
  paw \
  postman \
  sequel-pro \
  slack \
  spotify \
  sublime-text \
  telegram \
  transmission \
  visual-studio-code \
  vlc

# formulae
brew install \
  composer \
  ffmpeg \
  git \
  htop \
  hub \
  mpv \
  neofetch \
  pngquant \
  speedtest-cli \
  youtube-dl \
  vim \
  wp-cli

# phpbrew dependencies
brew install \
  bzip2 \
  oniguruma \
  libzip
