#################
# .bash_profile #
#################


# import #
##########

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
  . ~/.bashrc;
fi

# include .alias if it exists
if [ -f ~/.alias ]; then
  . ~/.alias;
fi
