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
