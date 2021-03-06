#########
# alias #
#########


# alias #
#########

# ls
alias ls='ls --color=auto'

# youtube
alias yt-dl-music="youtube-dl -f bestaudio -x --audio-format m4a $1"
alias yt-dl-video="youtube-dl -f bestvideo+bestaudio $1"
alias yt-str-music="mpv --no-video --loop-file $1"
alias yt-str-video="mpv --ytdl-format=\"bestvideo[height<=?720]+bestaudio/best\""
alias yt-up="sudo pip install --upgrade youtube_dl"

# random
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
