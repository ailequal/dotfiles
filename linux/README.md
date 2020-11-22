# linux-dotfiles

## info

This little guide is my reference when I am setting up a new machine with GNU/Linux (not exactly a standard dotfile). Right now I am working with a ThinkPad X250 with [Xubuntu 20.04 Focal Fossa](https://xubuntu.org/release/20-04/) as my main distro, so these steps below are written for that specific distro mainly.

## steps

1. [install xubuntu](#install-xubuntu)
2. [update everything](#update-everything)
3. [bootstrap.sh](#bootstrapsh)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh setup](#ssh-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)
10. [manually install rtl8812au](#manually-install-rtl8812au)

### install xubuntu

[Download](https://xubuntu.org/download/) and install Xubuntu on your machine, set your username, hostname, password and so on.

### update everything

```shell
sudo apt -y update && sudo apt -y upgrade
```

### bootstrap.sh

Launch the bootstrap.sh script, it will automatically install lots of useful packages.

```shell
chmod +x ./bootstrap.sh && ./bootstrap.sh
```

### settings setup

Settings Manager > Set everything here

* install language support
* set panel setup
* set all keyboards shortcut

### little fixes

#### natural touchpad scroll

Session and Startup > Application Autostart > +Add

```shell
synclient VertScrollDelta=-39
```

#### screen lags

Settings Manager > Window Manager Tweaks > Compositor > Enable display compositing > OFF

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh setup

Set up your multiple ssh keys correctly and test them.

### terminal setup

Configuration: .bash_rc
Font: [Roboto Mono for Powerline](https://github.com/powerline/fonts)
Font size: 14px
Color: [Midnight In Mojave](https://github.com/mbadolato/iTerm2-Color-Schemes)
Cursor: block & blinking
Tab tab: always show
Columns: 100
Rows: 24

### extra packages

These extra packages must be installed manually.
* [GitHub Desktop](https://github.com/shiftkey/desktop)
* [Typora](https://typora.io)
* [nvm](https://github.com/nvm-sh/nvm)
* [phpbrew](https://github.com/phpbrew/phpbrew)
* [wp-cli](https://github.com/wp-cli/wp-cli)

### manually install rtl8812au

[rtl8812au](https://github.com/aircrack-ng/rtl8812au) for the TP-Link Archer T2U Nano.

