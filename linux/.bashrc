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

# ps1 (not compatible with zsh)
export PS1="\[\e[32;32m\]>>>\[\e[m\]\[\e[32;34m\]\`parse_git_branch\`\[\e[m\] "

# get current branch in git repo (ps1)
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

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# phpbrew
# [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# jetbrains
# export PATH="$PATH:$HOME/bin"
