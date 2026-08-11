# macos-dotfiles

## info

This little guide is my reference when I am setting up a new machine with macOS.

## steps

1. [install macos](#install-macos)
2. [update everything](#update-everything)
3. [bootstrap-macos](#bootstrap-macos)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh and gpg setup](#ssh-and-gpg-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)
10. [dotfiles](#dotfiles)

### install macos

[Download](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/mac-install.html#downloading-macos-modern-os) and install macOS. Set your username, hostname, password and so on.

### update everything

Update the OS to the latest patch available.

Then run this command in the terminal.

```shell
xcode-select --install
```

### bootstrap-macos

Install [homebrew](https://brew.sh).

Launch the `bootstrap-macos` script, it will automatically install lots of useful packages.

Otherwise, manually select which one you'd like to install (just delete or comment the unwanted lines).

```shell
./local/bin/bootstrap-macos
```

### settings setup

- Set system settings (keyboard key repeat: fastest; delay until repeat: shortest).
- Set cloud accounts sync.
- Set Finder settings.
- Set panel setup with Stats.
- Set widgets.
- Restore data from Time Machine (optional).
- Setup dock (minimal).
- Set hostname.

### little fixes

```shell
mkdir -p ~/.local/bin

# enable unsigned applications
sudo spctl --master-disable

# enable a specific unsigned application
xattr -d com.apple.quarantine /Applications/Application.app

# manually prevent spotlight from searching into:
# ~/repos
# ~/Downloads/random

# set the following keyboard shortcuts from System Preferences:
# move window to center: fn + ctrl + c
# maximize window: fn + ctrl + f
# tiling half horizontal top: fn + ctrl + up
# tiling half vertical right: fn + ctrl + right
# tiling half horizontal down: fn + ctrl + down
# tiling half vertical left: fn + ctrl + left
# corner tiling top right: shift + alt + cmd + up
# corner tiling bottom right: shift + alt + cmd + right
# corner tiling bottom left: shift + alt + cmd + down
# corner tiling top left: shift + alt + cmd + left
```

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh and gpg setup

Set up your [ssh](https://gist.github.com/ailequal/b74811385f4047b34ad590d138c9ffcf) and [gpg](https://gist.github.com/ailequal/fc9b12cb35f119dcdc1a2f4406bf8b54) keys correctly and test them.

### terminal setup

#### macOS Terminal

Set the terminal profile `~/.config/com.apple.Terminal/midnight.terminal` as default.

#### ghostty

Install [Ghostty](https://ghostty.org/docs/install/binary).

#### kitty

Install [Kitty](https://sw.kovidgoyal.net/kitty/binary/#install-kitty).

#### alacritty

Install [Alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md).

#### links

```shell
# create a symbolic link (it will only work for the current user though)
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/kitty
sudo ln -s ~/.cargo/bin/alacritty /usr/local/bin/alacritty
```

Optionally set a global shortcut for them with `skhd` following [this guide](https://www.paolomainardi.com/posts/macos-apps-shortcuts-skhd).

### extra packages

These extra packages must be installed manually.

- [lazyvim](./.config/lvim/README.md)
- [nvm](https://github.com/nvm-sh/nvm)
- [posting](https://github.com/darrenburns/posting)

### dotfiles

Add the dotfiles to your system (beware that there are a few ones only for Linux). This includes mainly includes `.config/*` and `.local/bin/*`, plus a few other files.
