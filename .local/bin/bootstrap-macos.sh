#! /bin/bash

################
# bootstrap.sh #
################



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
  monitorcontrol \
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
  bat \
  fastfetch \
  ffmpeg \
  git \
  gnupg \
  htop \
  lazydocker \
  lolcat \
  mpv \
  openssl \
  php \
  pinentry-mac \
  pngquant \
  ripgrep \
  speedtest-cli \
  tig \
  tmux \
  tokei \
  tree \
  yt-dlp \
  vim \
  zellij

# cargo
cargo install bob-nvim
