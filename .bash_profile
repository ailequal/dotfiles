#################
# .bash_profile #
#################


# aliases #
###########

# ciao-mondo
alias ciao-mondo="echo hello-world"


# functions #
#############

# initialize a github repo with a custom name
function repo-hub() {
		# generating files
		mkdir $1 && cd $1
		vim README.md

		# generating github repo
		git init
		git add .
		git commit -m 'First commit'
		hub create
		git push --set-upstream origin master
}

# initialize a git repo with a custom name
function repo-local() {
		# generating files
		mkdir $1 && cd $1
		vim README.md

		# generating git repo
		git init
		git add .
		git commit -m 'First commit'
}
