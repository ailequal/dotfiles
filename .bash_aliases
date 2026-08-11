# aliases #
###########

# ls
# alias ls='ls --color=auto'

# cat
# alias cat='bat --style=auto'
# alias ccat='/bin/cat'

# youtube
alias yt-dl-music="yt-dlp -f bestaudio -x --audio-format m4a $1"
alias yt-dl-video="yt-dlp -f bestvideo+bestaudio $1"
alias yt-str-music="mpv --no-video --loop-file $1"
alias yt-str-video="mpv --ytdl-format=\"bestvideo[height<=?720]+bestaudio/best\""
alias yt-up="yt-dlp -U" # if installed by manually downloading the binary file

# docker
# alias d='docker'
# alias dc='docker compose'
# alias dps='docker ps'
# alias dpsa='docker ps -a'
# alias di='docker images'

# random
alias ciao-mondo="echo hello-world | lolcat"
alias clip='wl-copy' # linux only
alias fp="fzf --preview 'bat --style=numbers --color=always {}'"
alias lvim="NVIM_APPNAME=lvim nvim"
alias gl='git log --oneline --graph --decorate'
alias wase="watch -n 5 sensors" # linux only
alias path='echo $PATH | tr ":" "\n"' # print each path entry on a new line
alias h='history'
alias reload='exec bash' # reload the shell
