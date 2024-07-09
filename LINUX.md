# linux-dotfiles

## info

This little guide is my reference when I am setting up a new machine with GNU/Linux.

## steps

1. [install linux](#install-linux)
2. [update everything](#update-everything)
3. [bootstrap-linux.sh](#bootstrap-linuxsh)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh and gpg setup](#ssh-and-gpg-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)
10. [dotfiles](#dotfiles)

### install linux

Download your distro of choice and install it on your machine (I'll use a Debian based one as reference). Set your username, hostname, password and so on.

### update everything

Turn off automatic updates and run these commands in the terminal.

### bootstrap-linux.sh

First install these package managers (or some of them) following the official guides:

- [cargo](https://www.rust-lang.org/tools/install)
- [snap](https://snapcraft.io/docs/installing-snap-on-ubuntu)
- [flatpak](https://flatpak.org/setup/Ubuntu)

Then you can launch the `bootstrap-linux.sh` script, it will automatically install lots of useful packages.
Otherwise, manually select which one you'd like to install (just delete or comment the unwanted lines).

```shell
./local/bin/bootstrap-linux.sh
```

### settings setup

- Set system settings.
- Set file manager settings.
- Restore data from backup (optional).
- Setup dock (minimal).
- Install language support.
- Set hostname.

### little fixes

```shell
mkdir -p ~/.local/bin

# manually add caffeine-indicator as a startup application.
```

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh and gpg setup

Set up your [ssh](https://gist.github.com/ailequal/b74811385f4047b34ad590d138c9ffcf) and [gpg](https://gist.github.com/ailequal/fc9b12cb35f119dcdc1a2f4406bf8b54) keys correctly and test them.

### theme

The main color scheme theme is [catppuccin](https://github.com/catppuccin) in the variant `Catppuccin-Macchiato`. Apply it to these main applications, if installed (some of them are automatically configured in the dotfiles):

- [alacritty](https://github.com/catppuccin/alacritty)
- [firefox](https://github.com/catppuccin/firefox)
- [gedit](https://github.com/catppuccin/gedit)
- [gnome-terminal](https://github.com/catppuccin/gnome-terminal)
- [jetbrains-icons](https://github.com/catppuccin/jetbrains-icons)
- [jetbrains](https://github.com/catppuccin/jetbrains)
- [kitty](https://github.com/catppuccin/kitty)
- [nvim](https://github.com/catppuccin/nvim)
- [slack](https://github.com/catppuccin/slack)
- [spotify-player](https://github.com/catppuccin/spotify-player)
- [tmux](https://github.com/catppuccin/tmux)
- [vim](https://github.com/catppuccin/vim)
- [vscode](https://github.com/catppuccin/vscode)
- [xfce4-terminal](https://github.com/catppuccin/xfce4-terminal)
- [zellij](https://github.com/catppuccin/zellij)

### terminal setup

#### Gnome terminal

Set the terminal profile `Catppuccin-Macchiato` as default.

#### alacritty

Install [Alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md).

#### kitty

Install [Kitty](https://sw.kovidgoyal.net/kitty/binary/#install-kitty).

#### links

```shell
# create a symbolic link (it will only work for the current user though)
sudo ln -s ~/.cargo/bin/alacritty /usr/local/bin/alacritty
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/kitty
```

From now on, from Gnome, with `alt + f2` you can run `alacritty` or `kitty`.

### extra packages

These extra packages must be installed manually.

- [1password](https://1password.com)
- [chrome](https://www.google.com/chrome)
- [composer](https://getcomposer.org)
- [devilbox](https://github.com/cytopia/devilbox)
- [docker](https://docs.docker.com/engine/install/ubuntu)
- [kitty](https://sw.kovidgoyal.net/kitty)
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [nvm](https://github.com/nvm-sh/nvm)
- [toolbox app](https://www.jetbrains.com/toolbox-app)
- [wp-cli](https://github.com/wp-cli/wp-cli)

### dotfiles

Add the dotfiles to your system (beware that there are a few ones only for macOS).
This includes mainly includes `.config/*` and `.local/bin/*`, plus a few other files.
