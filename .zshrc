# ZSH-specifics
ZSH_THEME="pi"
export EDITOR="nvim"

plugins=(git docker docker-compose)

# LS="ls"
LS="colorls"

alias "c"="clear"
alias "l"="$LS -a"
alias "ls"="$LS -a"
alias "sl"="$LS -a"
alias "ll"="$LS -al"
alias "lol"="$LS -al"
alias "lsd"="$LS -al"
alias "las"="$LS -al"
alias "vi"="nvim"
alias "vim"="nvim"
alias "cd.."="cd .."
alias ":wq"="echo -e \"You're not in VIM, dumbass\!\""
alias "weather"="curl http://wttr.in/"

alias "drmc"="docker rm $(docker ps -a -q)"
alias "drmi"="docker rmi $(docker images -q)"

export PAGER="most"
export BAT_PAGER="less"
