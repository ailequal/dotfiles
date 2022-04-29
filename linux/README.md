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
Otherwise, manually select which one you'd like to install.

```shell
chmod +x ./bootstrap.sh && ./bootstrap.sh
```

### settings setup

Settings > Set everything here

* install language support
* set hostname

### little fixes

* Add "caffeine-indicator" as a startup application.
* Set the super key to activate the workspaces.
* Create "/home/$USER/bin" folder (the JetBrains lauch scripts will go here).

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh setup

Set up your multiple ssh keys correctly and test them.

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

* [chrome](https://www.google.com/chrome)
* [devilbox](https://github.com/cytopia/devilbox)
* [docker](https://docs.docker.com/engine/install/ubuntu)
* [nvm](https://github.com/nvm-sh/nvm)
* [phpbrew](https://github.com/phpbrew/phpbrew)
* [toolbox app](https://www.jetbrains.com/toolbox-app)
* [wp-cli](https://github.com/wp-cli/wp-cli)

### dotfiles

Now add the dotfiles to your system.
