# ZSH-specifics
ZSH_THEME="pi"
EDITOR="nvim"

alias "c"="clear"
alias "l"="ls"
alias "ll"="ls -al"
alias "lol"="ls -al"
alias "lsd"="ls -al"
alias "las"="ls -al"
alias "vi"="nvim"
alias "vim"="nvim"
alias "cd.."="cd .."
alias ":wq"="echo -e \"You're not in VIM, dumbass\!\""
alias "weather"="curl http://wttr.in/"

alias "drmc"="docker rm $(docker ps -a -q)"
alias "drmi"="docker rmi $(docker images -q)"

export PAGER="most"
export BAT_PAGER="less"
