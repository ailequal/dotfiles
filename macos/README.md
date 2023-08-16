# macos-dotfiles

## info

This little guide is my reference when I am setting up a new machine with macOS.

## steps

1. [install macos](#install-macos)
2. [update everything](#update-everything)
3. [bootstrap.sh](#bootstrapsh)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh and gpg setup](#ssh-and-gpg-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)
10. [dotfiles](#dotfiles)

### install macos

[Download](https://dortania.github.io/OpenCore-Desktop-Guide/installer-guide/mac-install.html#downloading-macos) and install macOS on your machine, set your username, hostname, password and so on.

### update everything

Check that you are running the latest stable version of macOS with the latest pathes available and turn off any automatic update.

Then run this command in the terminal.

```shell
xcode-select --install
```

### bootstrap.sh

First install [homebrew](https://brew.sh) package manager following the official guide.

Then you can launch the bootstrap.sh script, it will automatically install lots of useful packages.
Otherwise, manually select which one you'd like to install (just delete or comment the unwanted lines).

```shell
chmod +x ./bootstrap.sh && ./bootstrap.sh
```

Keep in mind that some packages will all ask for root permission before installing anything on the system.

### settings setup

* Set system settings (keyboard key repeat: fastest; delay until repeat: shortest).
* Set cloud accounts sync.
* Set Finder settings.
* Set panel setup with iStat Menus.
* Set widgets.
* Install applications from App Store (primarly Magnet).
* Restore data from Time Machine (optional).
* Setup dock (minimal).
* Set hostname.

### little fixes

#### unsigned applications

Enable unsigned applications.

```bash
sudo spctl --master-disable
```

Enable a specific unsigned application.

```bash
xattr -d com.apple.quarantine /Applications/Application.app
```

#### spotlight

Prevent Spotlight from searching into:
* ~/repos
* ~/sites
* ~/Downloads/random

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh and gpg setup

Set up your [ssh](https://gist.github.com/ailequal/b74811385f4047b34ad590d138c9ffcf) and [gpg](https://gist.github.com/ailequal/fc9b12cb35f119dcdc1a2f4406bf8b54) keys correctly and test them.

### terminal setup

* Configuration: .zshrc
* Font: default
* Font size: 14px
* Color: [Midnight In Mojave](https://github.com/mbadolato/iTerm2-Color-Schemes)
* Cursor: block & blinking
* Tab tab: always show
* Columns: 100
* Rows: 24

### extra packages

These extra packages must be installed manually.

* [composer](https://getcomposer.org)
* [devilbox](https://github.com/cytopia/devilbox)
* [doom emacs](https://github.com/doomemacs/doomemacs)
* [karabiner-elements](https://karabiner-elements.pqrs.org)
* [nvm](https://github.com/nvm-sh/nvm)
* [phpbrew](https://github.com/phpbrew/phpbrew)
* [wp-cli](https://github.com/wp-cli/wp-cli)

### dotfiles

Add the dotfiles to your system.
