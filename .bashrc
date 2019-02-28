#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

[ -f "$HOME/.shortcuts" ] && source "$HOME/.shortcuts" # Load shortcut aliases

# System Maintainence
alias mw="~/.config/mutt/mutt-wizard.sh"
alias sdn="sudo shutdown now"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias gua="git remote | xargs -L1 git push --all"

# Some aliases
alias e="$EDITOR"
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="$EDITOR"
alias f="vifm"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias ref="shortcuts >/dev/null ; source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias mpv="mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)"
alias x="sxiv -ft *"
alias lsp="pacman -Qett --color=always | less"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -i" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio
alias YT="youtube-viewer"
alias q="qutebrowser"
alias f="fish"

shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}
se() { du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf | xargs  -r $EDITOR ;}
sv() { vcopy "$(du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf)" ;}
vf() { fzf | xargs -r -I % $EDITOR % ;}
alias myip='ip addr show wlp0s20u2 | grep "inet "'

alias ants="./ant.sh"
ant() { mkdir ~/ant-data/$@ || cd ~/ant-data/$@ && cd ~/ant-data/$@ && wget $(curl -s https://www.antweb.org/images.do?genus="$@" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_h_") ;}
ant-d() { mkdir "$@" && cd "$@" && wget  $(curl -s https://www.antweb.org/images.do?genus="$@" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_d_") ;}
aw() { cat $(curl -s https://www.antweb.org/images.do?genus="$@" | grep '<div class="name">' | awk -F'">' '{print$4}' | awk -F'</' '{print$1}') ;}
ant-h() { mkdir "$@" && cd "$@" && wget $(curl "https://www.antweb.org/images.do?genus=$@&caste=normal" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_h_") ;}
ant-p() { mkdir "$@" && cd "$@" && wget $(curl "https://www.antweb.org/images.do?genus=$@&caste=normal" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_p_") ;}
ant-d() { mkdir "$@" && cd "$@" && wget $(curl "https://www.antweb.org/images.do?genus=$@&caste=normal" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_d_") ;}
