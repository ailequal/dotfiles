# alias #
#########

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

# install laravel mix in the current folder (using npm)
function laravel-mix-init() {
		# generating files
		npm init -y
		npm install laravel-mix --save-dev
		cp node_modules/laravel-mix/setup/webpack.mix.js ./
		mkdir src && touch src/app.{js,scss}
		node_modules/.bin/webpack --config=node_modules/laravel-mix/setup/webpack.config.js

		# add custom scripts to package.json
		cat ~/.copy/laravel-mix-init/package.json.copy | pbcopy # macos
		xclip -selection clipboard ~/.copy/laravel-mix-init/package.json.copy # linux
		vim package.json

		# for handling different environments
		npm install cross-env --save-dev

		# compile files once
		npm run dev

		# add custom .gitignore
		touch .gitignore
		cat ~/.copy/laravel-mix-init/.gitignore.copy | pbcopy # macos
		xclip -selection clipboard ~/.copy/laravel-mix-init/.gitignore.copy # linux
		vim .gitignore
}

# auto ssh login (linux)
function ssh-login() {
		eval "$(ssh-agent -s)"
		xclip -selection clipboard ~/.copy/ssh-login/passphrase.txt.copy
		ssh-add ~/.ssh/id_rsa
		xclip -selection clipboard ~/.copy/ssh-login/clear.txt.copy
}
