# 💤 LazyVim

My LazyVim configuration.

## resources

- [LazyVim](https://github.com/LazyVim/LazyVim)
- [neovim](https://github.com/neovim/neovim)
- [Homebrew](https://brew.sh/)
- [ghostty](https://github.com/ghostty-org/ghostty)
- [git](https://github.com/git/git)
- [rust](https://github.com/rust-lang/rust)
- [bob](https://github.com/MordechaiHadad/bob)
- [Nerd Fonts](https://www.nerdfonts.com/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
  - [fzf](https://github.com/junegunn/fzf)
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [fd](https://github.com/sharkdp/fd)

## pre-requisites

### macos

```bash
xcode-select --install
# install homebrew
brew update && brew upgrade
# install rust
brew install curl
brew install git
brew install --cask ghostty # with dedicated config file

brew install neovim # latest stable version overall
# or select which version with bob
# cargo install bob-nvim
# bob install stable
# bob use stable

brew install --cask font-jetbrains-mono-nerd-font

brew install tree-sitter-cli

brew install lazygit

brew install fzf

brew install ripgrep

brew install fd
```

### linux

```bash
sudo apt update && sudo apt upgrade
sudo apt install build-essential curl tar
# install rust
sudo apt install git
# install ghostty with dedicated config file

sudo apt install neovim # latest stable version from the distribution
# or select which version with bob
# cargo install bob-nvim
# bob install stable
# bob use stable

# install jetbrains-mono (nerd font version)

cargo binstall tree-sitter-cli

# install lazygit

sudo apt install fzf

sudo apt install ripgrep

sudo apt -y install fd-find && mkdir -p ~/.local/bin && ln -sf $(which fdfind) ~/.local/bin/fd
```

## installation

```bash
# install lazyvim (fresh new installation)
# quick lazyvim setup without changing your current Neovim config
export NVIM_APPNAME=lvim
git clone https://github.com/LazyVim/starter ~/.config/lvim
rm -rf ~/.config/lvim/.git
nvim
# optionally you can set an alias to avoid exporting the variable
alias lvim="NVIM_APPNAME=lvim nvim"

# check that the installation is fine
:LazyHealth
:checkhealth
:checkhealth lazyvim
```

## update

```bash
# update lazyvim (complete setup)
# :Lazy
#   manage and update plugins
# :Mason
#   manage and update language servers (for autocompletion, go to definition...), linters and formatters
# :TSUpdate
#   update treesitter parsers (highlights the code structure)

# check the current lazyvim version
# :Lazy
# L # go to logs
# /LazyVim<Enter> # search for LazyVim
# check the version number and the commit details of the main plugin
```
