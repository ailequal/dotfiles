#########
# alias #
#########


# alias #
#########

# ls
# alias ls='ls --color=auto'

# youtube
alias youtube-dl="yt-dlp"
alias yt-dl-music="youtube-dl -f bestaudio -x --audio-format m4a $1"
alias yt-dl-video="youtube-dl -f bestvideo+bestaudio $1"
alias yt-str-music="mpv --no-video --loop-file $1"
alias yt-str-video="mpv --ytdl-format=\"bestvideo[height<=?720]+bestaudio/best\""
alias yt-up="python3 -m pip install -U yt-dlp"

# random
alias ciao-mondo="echo hello-world | lolcat"


# functions #
#############

# initialize a git repo with a custom name
function git-init() {
    # generating files
    mkdir $1 && cd $1
    touch README.md
    echo "# $1" > README.md

    # generating git repo
    git init
    git add .
    git commit -m 'First commit'
}
