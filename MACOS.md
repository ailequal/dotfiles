# macos-dotfiles

## info

This little guide is my reference when I am setting up a new machine with macOS.

## steps

1. [install macos](#install-macos)
2. [update everything](#update-everything)
3. [bootstrap-macos.sh](#bootstrap-macossh)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh and gpg setup](#ssh-and-gpg-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)
10. [dotfiles](#dotfiles)

### install macos

[Download](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/mac-install.html#downloading-macos-modern-os) and install macOS on your machine, set your username, hostname, password and so on.

### update everything

Check that you are running the latest stable version of macOS with the latest patches available and turn off any automatic update.

Then run this command in the terminal.

```shell
xcode-select --install
```

### bootstrap-macos.sh

First install these package managers (or some of them) following the official guides:

- [cargo](https://www.rust-lang.org/tools/install)
- [homebrew](https://brew.sh)

Then you can launch the `bootstrap-macos.sh` script, it will automatically install lots of useful packages.
Otherwise, manually select which one you'd like to install (just delete or comment the unwanted lines).
Keep in mind that some packages will all ask for root permission before installing anything on the system.

```shell
./local/bin/bootstrap-macos.sh
```

### settings setup

- Set system settings (keyboard key repeat: fastest; delay until repeat: shortest).
- Set cloud accounts sync.
- Set Finder settings.
- Set panel setup with iStat Menus.
- Set widgets.
- Install applications from App Store (primarly Magnet).
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

# manually prevent spotlight from searching into
# ~/repos
# ~/sites
# ~/Downloads/random
```

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh and gpg setup

Set up your [ssh](https://gist.github.com/ailequal/b74811385f4047b34ad590d138c9ffcf) and [gpg](https://gist.github.com/ailequal/fc9b12cb35f119dcdc1a2f4406bf8b54) keys correctly and test them.

### theme

The main color scheme theme is [catppuccin](https://github.com/catppuccin) in the variant `Catppuccin-Macchiato`. Apply it to these main applications, if installed (some of them are automatically configured in the dotfiles):

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

#### macOS Terminal

Set the terminal profile `~/.config/com.apple.Terminal/midnight.terminal` as default.

- Configuration: .zshrc
- Font: default
- Font size: 14px
- Color: [Midnight In Mojave](https://github.com/mbadolato/iTerm2-Color-Schemes)
- Cursor: block & blinking
- Tab tab: always show
- Columns: 100
- Rows: 24

#### kitty

TODO: Create the kitty configuration file.

### extra packages

These extra packages must be installed manually.

- [composer](https://getcomposer.org)
- [devilbox](https://github.com/cytopia/devilbox)
- [karabiner-elements](https://karabiner-elements.pqrs.org)
- [kitty](https://sw.kovidgoyal.net/kitty)
- [nvm](https://github.com/nvm-sh/nvm)
- [wp-cli](https://github.com/wp-cli/wp-cli)

### dotfiles

Add the dotfiles to your system (beware that there are a few ones only for Linux).
