##########
# .zshrc #
##########

# environment variables #
#########################

# local/bin
export PATH="$PATH:$HOME/.local/bin"

# go/bin
export PATH="$PATH:$(go env GOPATH)/bin"

# homebrew path fix for non root user
# export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH" # macos only

# cli editor
export EDITOR="vim"
export SUDO_EDITOR="vim"

# connect to X11 through IP display
# export IP=$(ipconfig getifaddr en0)
# export DISPLAY=$IP:0


# history #
###########

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# history options
setopt HIST_IGNORE_ALL_DUPS  # don't save duplicate commands
setopt HIST_IGNORE_SPACE     # don't save commands that start with a space
setopt HIST_REDUCE_BLANKS    # remove superfluous blanks before saving
setopt SHARE_HISTORY         # share history across multiple open terminal windows


# terminal behavior & keys #
############################

bindkey -e # emacs
# bindkey -v # vi

# disable XON/XOFF software flow control to free
# Ctrl+S for forward search in reverse-i-search
stty -ixon

# tab title as current tty
precmd() {
  echo -ne "\033]0;$(tty)\007"
}


# zsh options #
###############

setopt AUTO_CD           # type a directory name and press enter to cd into it
# setopt EXTENDED_GLOB     # turn on advanced pattern matching
# setopt NO_BEEP           # disable terminal beeping


# colors & styling #
####################

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced # dark theme
# export LSCOLORS=ExFxBxDxCxegedabagacad # light theme


# completions #
###############

# add custom completions folder to fpath
# add completions here with e.g.: `just --completions zsh > ~/.zsh/completions/_just`
fpath=(~/.zsh/completions $fpath)

autoload -Uz compinit
compinit

# use a visual menu for completions
zstyle ':completion:*' menu select

# colorize completion lists to match your LSCOLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


# prompt (ps1) #
################

# vanilla prompt
# PROMPT='%F{green}>>> %f'

# add git status to zsh prompt
# @link https://salferrarello.com/zsh-git-status-prompt
# always set the prompt with single quotes
# @link https://stackoverflow.com/questions/56449176/zsh-not-updating-vcs-info
# autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# enable substitution in the prompt
setopt prompt_subst
# run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the git information in red
#PROMPT='%1~ %F{red}${vcs_info_msg_0_}%f %# '
PROMPT='%F{green}>>> %F{blue}${vcs_info_msg_0_} %f'
# enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# set the format of the git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'


# node version manager (nvm) #
##############################

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# automatically call `nvm use` if `.nvmrc` is detected
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc


# imports & aliases #
#####################

# include .zsh_aliases if it exists
if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases;
fi
