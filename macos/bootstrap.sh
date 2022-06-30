##############
# bootstrap.sh
##############


#! /bin/bash
############

# update homebrew && upgrade homebrew
brew update && brew upgrade

# casks
brew install --cask \
  1password \
  appcleaner \
  coconutbattery \
  cyberduck \
  discord \
  docker \
  firefox \
  homebrew/cask-versions/firefox-developer-edition \
  logitech-options \
  gitkraken \
  google-backup-and-sync \
  google-chrome \
  handbrake \
  istat-menus \
  iterm2 \
  jetbrains-toolbox \
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
  typora \
  transmission \
  vagrant \
  virtualbox \
  visual-studio-code \
  vlc \
  zoomus

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
  tig \
  youtube-dl \
  vim \
  wp-cli

# phpbrew dependencies
# brew install \
#   bzip2 \
#   oniguruma \
#   libzip
