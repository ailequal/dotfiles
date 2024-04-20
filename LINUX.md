# linux-dotfiles

## info

This little guide is my reference when I am setting up a new machine with GNU/Linux.

## steps

1. [install linux](#install-linux)
2. [update everything](#update-everything)
3. [bootstrap.sh](#bootstrapsh)
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

```shell
sudo apt -y update && sudo apt -y upgrade
```

### bootstrap.sh

Launch the bootstrap.sh script, it will automatically install lots of useful packages.
Otherwise, manually select which one you'd like to install (just delete or comment the unwanted lines).
You might need to install some package managers (apt, snap, flatpak) before running the script.

```shell
chmod +x ./local/bin/bootstrap.sh && ./local/bin/bootstrap.sh
```

### settings setup

* Set system settings.
* Set file manager settings.
* Restore data from backup (optional).
* Setup dock (minimal).
* Install language support.
* Set hostname.

### little fixes

* Add "caffeine-indicator" as a startup application.
* Create "/home/$USER/.local/bin" folder.

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh and gpg setup

Set up your [ssh](https://gist.github.com/ailequal/b74811385f4047b34ad590d138c9ffcf) and [gpg](https://gist.github.com/ailequal/fc9b12cb35f119dcdc1a2f4406bf8b54) keys correctly and test them.

### terminal setup

* Configuration: .bashrc
* Font: default
* Font size: 14px
* Color: default
* Cursor: block & blinking
* Tab tab: default
* Columns: 100
* Rows: 24

### extra packages

These extra packages must be installed manually.

* [1password](https://1password.com)
* [chrome](https://www.google.com/chrome)
* [composer](https://getcomposer.org)
* [devilbox](https://github.com/cytopia/devilbox)
* [docker](https://docs.docker.com/engine/install/ubuntu)
* [nvm](https://github.com/nvm-sh/nvm)
* [phpbrew](https://github.com/phpbrew/phpbrew)
* [toolbox app](https://www.jetbrains.com/toolbox-app)
* [wp-cli](https://github.com/wp-cli/wp-cli)

### dotfiles

Add the dotfiles to your system.
