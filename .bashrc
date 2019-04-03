#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

export GPG_TTY=$(tty)
# System Maintainence
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias usb="cd /run/media/dan/ && ls -l"
alias jackett-plugin="cd /home/dan/.local/share/data/qBittorrent/nova3/engines"
# Some aliases
#alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias c="wal --theme random_dark -qe"
alias sr="sudo ranger"
alias g="git"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias bw="wal -c && wal -i ~/.config/wall.png -qe" # Rerun pywal
#alias bbw="http://blackbox.smashthestack.org:85/"
#alias bb="ssh -l level1 blackbox.smashthestack.org -p 2225"
alias ants="./ant.sh"
alias f="fish"
alias b="bash"
alias z="zsh"
alias og="outguess"
alias ducks='du -cks -- * | sort -rn | head'
alias n='neofetch'

# Adding color
alias l='ls -Bht --literal --color=auto --group-directories-first'
alias L='ls -BAFNGghstuc --color=always'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio
alias YT="youtube-viewer"
alias ytb="youtube-dl -c -f best --batch-file" # batch download, usage: ytb 'batchfile.txt'
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias starwars="telnet towel.blinkenlights.nl"

#VPN shortcuts
alias vpn="expressvpn disconnect; expressvpn connect"
alias vpns="expressvpn status"
alias vpnd="expressvpn disconnect"
alias vpnc="expressvpn connect"
# TeX
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"

#cicada 3301 shortcuts
alias lpj='cd ~/lp/ver/jpg && ls'
alias lpb='cd ~/lp/ver/bin && ls'
alias lph='cd ~/lp/ver/hex && ls'
alias lps='cd ~/lp/ver/steg && ls'
alias  p='primes.pl'
alias x="sudo pkill -x "
alias disk='df -h'
alias ee='cd ~/2019/ENV202\ -\ Introductory\ Remote\ Sensing/'
source ~/.shortcuts

shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}

shdla() { curl -O $(curl -s https://sci-hub.se/"$@" | grep location.href | grep -o http.*pdf) ;}

ant-h() { mkdir "$@" && cd "$@" && wget $(curl "https://www.antweb.org/images.do?genus=$@&caste=normal" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_h_") ;}

ant-p() { mkdir "$@" && cd "$@" && wget $(curl "https://www.antweb.org/images.do?genus=$@&caste=normal" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_p_") ;}

ant-d() { mkdir "$@" && cd "$@" && wget $(curl "https://www.antweb.org/images.do?genus=$@&caste=normal" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_d_") ;}
ean() { cat $(curl "http://opengtindb.org/?ean=$@&cmd=query&queryid=400000000" | grep name) ;}
fss() { fc-list | awk -F'.ttf: ' '{print$2}' | grep -i $@ ;}

#ant() { mkdir ~/ants/training-data/$@ || cd ~/ants/training-data/$@ &&     cd ~/ants/training-data/$@ && wget $(curl -s https://www.antweb.org/images.do?genus="$@" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_h_") ;}
#ant-d() { mkdir "$@" && cd "$@" && wget  $(curl -s https://www.antweb.org/images.do?genus="$@" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_d_") ;}
#aw() { cat $(curl -s https://www.antweb.org/images.do?genus="$@" | grep '<div class="name">' | awk -F'">' '{print$4}' | awk -F'</' '{print$1}') ;}
#news() { curl -O $(curl -s https//outline.com/"$@"u:
#fc-search() { grep $(fc-list | awk -F".ttf: " "{print$2}" | grep "style") ;}
#fs() { fc-list && awk -F".ttf: " "{print$2}" && grep "style" && grep "$@" ;}
#og() { outguess -r "$@" "$@".txt ;}
#fss() { fc-list | awk -F'.ttf: ' '{print$2}' | grep $@ ;}
# fcs() { grep $(fc-list | awk -F".ttf: " "{print$2}" | grep style) ;}
#go() { cd $(echo $(echo $(pwd)/)$@) && ls ); ls ;}
#go() { cd "$@" && ls "$@" ;}
#go() { cd "$@" && ls $(pwd)}
#pri() {curl https://www.calculatorsoup.com/calculators/math/prime-number-calculator.php?x=&action=solve ;}

#wal -a 95 -i ~/.config/wall.png --saturate 1 -qe
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
source /home/dan/.shortcuts
neofetch
export PATH="$PATH:$HOME/.bin"
