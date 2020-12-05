##########
# .zshrc #
##########


# import #
##########

# include .alias if it exists
if [ -f ~/.alias ]; then
  . ~/.alias;
fi


# ps1 (zsh-prompt-generator.site) #
###################################

PROMPT="%F{green}>>> %f"


# colors #
##########

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced # dark theme
# export LSCOLORS=ExFxBxDxCxegedabagacad # light theme


# environment variables #
#########################

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# phpbrew
# [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
