###########
# .bashrc #
###########



# import #
##########

# include .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases;
fi


# ps1 (ezprompt.net) #
######################

# custom prompt
export PS1="\[\e[32;32m\]>>>\[\e[m\]\[\e[32;34m\]\`parse_git_branch\`\[\e[m\] "

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


# colors #
##########

# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced # dark theme
# export LSCOLORS=ExFxBxDxCxegedabagacad # light theme


# environment variables #
#########################

# local/bin
export PATH="$PATH:$HOME/.local/bin"

# bob-nvim
export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"

# cli editor
export EDITOR="nvim"
export SUDO_EDITOR="nvim"

# vi keybindings
# set -o vi

# tab title as current tty
PROMPT_COMMAND='echo -ne "\033]0;$(tty)\007"'
