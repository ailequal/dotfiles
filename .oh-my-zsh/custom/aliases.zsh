# alias #
#########

# ciao-mondo
alias ciao-mondo="echo hello-world"


# functions #
#############

# initialize a github repo with a custom name (if specified)
function repo-hub() {
				# generating files
				mkdir $1 && cd $1
				nvim README.md

				# generating github repo
				git init
				git add .
				git commit -m 'First commit'
				hub create
				git push --set-upstream origin master
}

# initialize a git repo with a custom name (if specified)
function repo-local() {
				# generating files
				mkdir $1 && cd $1
				nvim README.md

				# generating git repo
				git init
				git add .
				git commit -m 'First commit'
}
