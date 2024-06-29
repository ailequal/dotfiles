#! /bin/bash

################
# bootstrap.sh #
################



# update homebrew && upgrade homebrew
brew update && brew upgrade

# casks
brew install --cask 1password
# brew install --cask alacritty
brew install --cask appcleaner
brew install --cask coconutbattery
brew install --cask cyberduck
brew install --cask discord
brew install --cask docker
brew install --cask firefox
brew install --cask logitech-options
brew install --cask google-backup-and-sync
brew install --cask google-chrome
brew install --cask handbrake
brew install --cask istat-menus
# brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask keepingyouawake
brew install --cask keka
brew install --cask mactracker
# brew install --cask monitorcontrol
brew install --cask postman
# brew install --cask sequel-pro
brew install --cask slack
brew install --cask spotify
brew install --cask sublime-text
brew install --cask telegram
brew install --cask transmission
# brew install --cask vagrant
# brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask vlc
# brew install --cask zoomus

# formulae
brew install bat
brew install fastfetch
brew install ffmpeg
brew install git
brew install gnupg
brew install htop
brew install lazydocker
brew install lazygit
brew install lolcat
brew install mpv
brew install openssl
brew install php
brew install pinentry-mac
brew install pngquant
brew install ripgrep
brew install speedtest-cli
brew install tig
brew install tmux
brew install tokei
brew install tree
brew install yt-dlp
brew install vim
brew install zellij

# cargo
cargo install bob-nvim
