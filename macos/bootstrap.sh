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
  logitech-options \
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
  transmission \
  vagrant \
  virtualbox \
  visual-studio-code \
  vlc \
  zoomus

# formulae
brew install \
  ffmpeg \
  git \
  htop \
  hub \
  lolcat \
  mpv \
  neofetch \
  neovim \
  php \
  pngquant \
  speedtest-cli \
  tig \
  tmux \
  tree \
  youtube-dl \
  vim
