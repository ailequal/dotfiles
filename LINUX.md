# linux-dotfiles

## info

This little guide is my reference when I am setting up a new machine with GNU/Linux.

## steps

1. [install linux](#install-linux)
2. [update everything](#update-everything)
3. [bootstrap-linux](#bootstrap-linux)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh and gpg setup](#ssh-and-gpg-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)
10. [dotfiles](#dotfiles)

### install linux

[Download](https://ubuntu.com/download/desktop) and install the latest Ubuntu LTS. Set your username, hostname, password and so on.

### update everything

Update the OS to the latest patch available.

### bootstrap-linux

Launch the `bootstrap-linux` script, it will automatically install lots of useful packages.

Otherwise, manually select which one you'd like to install (just delete or comment the unwanted lines).

```shell
./local/bin/bootstrap-linux
```

### settings setup

- Set system settings.
- Set file manager settings.
- Restore data from backup (optional).
- Setup dock (minimal).
- Install language support.
- Set hostname.

#### gnome-extensions

Install the needed [Gnome Extensions](https://extensions.gnome.org/) from the website or using `gnome-extensions-app` (Caffeine at least always).

- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
- [TopHat](https://extensions.gnome.org/extension/5219/tophat/)
- [Tactile](https://extensions.gnome.org/extension/4548/tactile/)
- [Tiling Shell](https://extensions.gnome.org/extension/7065/tiling-shell/)
- [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/)
- [Space Bar](https://extensions.gnome.org/extension/5090/space-bar/)
- [Tray Icons: Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/)
- [Alphabetical App Grid](https://extensions.gnome.org/extension/4269/alphabetical-app-grid/)
- [Simple Timer](https://extensions.gnome.org/extension/5115/simple-timer/)
- [Lilypad](https://github.com/shendrew/Lilypad)

### little fixes

```shell
mkdir -p ~/.local/bin

# set the following keyboard shortcuts from Settings:
# play/pause: ctrl + alt + p
# switch to workspace on the left: shift + alt + h
# switch to workspace on the right: shift + alt + l

# set the following keyboard shortcuts from Ubuntu Tiling Assistant:
# move window to center: shift + alt + c
# corner tiling top right: shift + alt + up
# corner tiling bottom right: shift + alt + right
# corner tiling bottom left: shift + alt + down
# corner tiling top left: shift + alt + left
```

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh and gpg setup

Set up your [ssh](https://gist.github.com/ailequal/b74811385f4047b34ad590d138c9ffcf) and [gpg](https://gist.github.com/ailequal/fc9b12cb35f119dcdc1a2f4406bf8b54) keys correctly and test them.

### terminal setup

#### ghostty

Install [Ghostty](https://ghostty.org/docs/install/binary).

#### kitty

Install [Kitty](https://sw.kovidgoyal.net/kitty/binary).

#### alacritty

Install [Alacritty](https://github.com/alacritty/alacritty).

#### links

```shell
# create a symbolic link (it will only work for the current user though)
# for ghostty it's automatically done by the installation script
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/kitty
sudo ln -s ~/.cargo/bin/alacritty /usr/local/bin/alacritty
```

From now on, from Gnome, with `alt + f2` you can run `ghostty`, `kitty` or `alacritty`, butt Ghostty is also automatically binded to `ctrl + alt + t` as terminal emulator.

### extra packages

These extra packages must be installed manually.

- [1password](https://1password.com)
- [bat](https://github.com/sharkdp/bat)
- [chrome](https://www.google.com/chrome)
- [delta](https://github.com/dandavison/delta)
- [docker](https://docs.docker.com/engine/install/ubuntu)
- [dua-cli](https://github.com/Byron/dua-cli)
- [eza](https://github.com/eza-community/eza)
- [herdr](https://github.com/herdrdev/herdr)
- [jetbrains-mono](https://github.com/JetBrains/JetBrainsMono) ([nerd font version](https://www.nerdfonts.com/font-downloads))
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lazyvim](./.config/lvim/README.md)
- [nvm](https://github.com/nvm-sh/nvm)
- [openspec](https://github.com/Fission-AI/OpenSpec)
- [opencode](https://github.com/anomalyco/opencode)
- [posting](https://github.com/darrenburns/posting)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [zellij](https://github.com/zellij-org/zellij)

### dotfiles

Add the dotfiles to your system (beware that there are a few ones only for macOS). This includes mainly includes `.config/*` and `.local/bin/*`, plus a few other files.
