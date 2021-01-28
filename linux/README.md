# linux-dotfiles

## info

This little guide is my reference when I am setting up a new machine with GNU/Linux.

## steps

1. [install popos](#install-popos)
2. [update everything](#update-everything)
3. [bootstrap.sh](#bootstrapsh)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh setup](#ssh-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)
10. [dotfiles](#dotfiles)

### install popos

[Download](https://pop.system76.com) and install Pop!_OS on your machine, set your username, hostname, password and so on.

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

Settings > Set everything here

* install language support
* set hostname

### little fixes

Nothing here.

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh setup

Set up your multiple ssh keys correctly and test them.

### terminal setup

* Configuration: .bashrc
* Font: default
* Font size: 12px
* Color: default
* Cursor: block & blinking
* Tab tab: default
* Columns: 90
* Rows: 28

### extra packages

These extra packages must be installed manually.
* [nvm](https://github.com/nvm-sh/nvm)
* [phpbrew](https://github.com/phpbrew/phpbrew)
* [wp-cli](https://github.com/wp-cli/wp-cli)
* [freon](https://github.com/UshakovVasilii/gnome-shell-extension-freon)

### dotfiles

Now add the dotfiles to your system.
