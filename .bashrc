###########
# .bashrc #
###########

# environment variables #
#########################

# local/bin
export PATH="$PATH:$HOME/.local/bin"

# go/bin
export PATH="$PATH:$(go env GOPATH)/bin"

# bob-nvim
export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"

# cli editor
export EDITOR="vim"
export SUDO_EDITOR="vim"


# history #
###########

export HISTFILE="$HOME/.bash_history"
export HISTSIZE=10000
export HISTFILESIZE=10000

# history options
export HISTCONTROL=ignoreboth:erasedups # don't save duplicates or commands starting with a space
shopt -s histappend                     # append to the history file, don't overwrite it


# terminal behavior & keys #
############################

set -o emacs # emacs
# set -o vi  # vi

# disable XON/XOFF software flow control to free
# Ctrl+S for forward search in reverse-i-search
stty -ixon

# tab title as current tty
# PROMPT_COMMAND='echo -ne "\033]0;$(tty)\007"'
# tab title as current tty (and save history immediately after each command)
PROMPT_COMMAND='history -a; echo -ne "\033]0;$(tty)\007"'


# bash options #
################

# shopt -s extglob             # turn on advanced pattern matching
shopt -s checkwinsize        # automatically update terminal lines/columns after window resize
# bind 'set bell-style none'   # disable terminal beeping
shopt -s autocd            # type a directory name to cd into it


# colors & styling #
####################

# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced # dark theme
# export LSCOLORS=ExFxBxDxCxegedabagacad # light theme


# completions #
###############

shopt -s progcomp                   # enable programmable completion
bind 'set show-all-if-ambiguous on' # show completions immediately on first tab instead of requiring a double-tab
bind 'set colored-stats on'         # colorize completion lists

# source system bash-completion package if available
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# source user-level completions from the XDG standard per-user directory
# bash-completion v2+ auto-reads this directory; this loop is a safe fallback
# add completions here with e.g.: `just --completions bash > ~/.local/share/bash-completion/completions/just`
if [ -d "$HOME/.local/share/bash-completion/completions" ]; then
  for f in "$HOME/.local/share/bash-completion/completions"/*; do
    [ -f "$f" ] && . "$f"
  done
fi


# prompt (ps1) #
################

# add git status to bash prompt
function parse_git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ ! "${BRANCH}" == "" ]
  then
    echo " (${BRANCH})"
  else
    echo ""
  fi
}

# custom prompt
export PS1="\[\e[32;32m\]>>>\[\e[m\]\[\e[32;34m\]\`parse_git_branch\`\[\e[m\] "


# node version manager (nvm) #
##############################

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# automatically call `nvm use` if `.nvmrc` is detected
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

# bash hook for changing directories
cd() {
  builtin cd "$@"
  load-nvmrc
}
load-nvmrc


# imports & aliases #
#####################

# include .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases;
fi
