# macos-dotfiles

## info

This little guide is my reference when I am setting up a new machine with macOS (not exactly a standard dotfile). Right now I am working with a MacBook Pro 13-inch Early 2015 with macOS Mojave 10.14.6 as my main operative system, so these steps below are written for that specific OS mainly.

## steps

1. [install macos](#install-macos)
2. [update everything](#update-everything)
3. [bootstrap.sh](#bootstrapsh)
4. [settings setup](#settings-setup)
5. [little fixes](#little-fixes)
6. [web browser logins](#web-browser-logins)
7. [ssh setup](#ssh-setup)
8. [terminal setup](#terminal-setup)
9. [extra packages](#extra-packages)

### install macos

[Download](https://dortania.github.io/OpenCore-Desktop-Guide/installer-guide/mac-install.html#downloading-macos) and install macOS on your machine, set your username, hostname, password and so on.

### update everything

Check that you are running the latest stable version of macOS with the latest pathes available and turn off any automatic update.

Then run this command in the terminal.

```shell
xcode-select --install
```

### little fixes

Enable unsigned applications.

```bash
sudo spctl --master-disable
```

Enable a specific unsigned application.

```bash
xattr -d com.apple.quarantine /Applications/Application.app
```

### bootstrap.sh

First install [homebrew](https://brew.sh) package manager following the official guide.

Then you can launch the bootstrap.sh script, it will automatically install lots of useful packages.

```shell
chmod +x ./bootstrap.sh && ./bootstrap.sh
```

These packages will all ask for root permission before installing anything on the system.

```shell
brew cask install 1password docker intel-power-gadget vagrant virtualbox torguard zoomus
```

### settings setup

System Preferences > Set everything here

* set cloud account sync
* set Finder settings
* set panel setup with iStat Menus
* set widgets
* install applications from App Store
* restore data from Time Machine
* setup dock

### web browser logins

Open up your browser and start logging inside your main websites.

### ssh setup

Set up your multiple ssh keys correctly and test them.

### terminal setup

Configuration: .bash_profile
Font: [Roboto Mono for Powerline](https://github.com/powerline/fonts)
Font size: 14px
Color: [Midnight In Mojave](https://github.com/mbadolato/iTerm2-Color-Schemes)
Cursor: block & blinking
Tab tab: always show
Columns: 100
Rows: 24

### extra packages

These extra packages must be installed manually.

* [nvm](https://github.com/nvm-sh/nvm)
* [phpbrew](https://github.com/phpbrew/phpbrew)
* [wp-cli](https://github.com/wp-cli/wp-cli)

