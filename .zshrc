# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/dan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="flazz"
#ZSH_THEME="agnoster" # (this is one of the fancy ones)


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias aw="curl https://www.antweb.org/images.do?'$@'"
# System Maintainence
alias mw="~/.config/mutt/mutt-wizard.sh"
alias b="bash"
alias muttwizard="~/.config/mutt/mutt-wizard.sh"
alias sdn="sudo shutdown now"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias usb="cd /run/media/dan/ && ls -l"
alias jackett-plugin="cd /home/dan/.local/share/data/qBittorrent/nova3/engines"
# Some aliases
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias trem="transmission-remote"
alias mkd="mkdir -pv"
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias bw="wal -c && wal -i ~/.config/wall.png" # Rerun pywal
alias pi="bash ~/.larbs/wizard/wizard.sh"
#alias bbw="http://blackbox.smashthestack.org:85/"
#alias bb="ssh -l level1 blackbox.smashthestack.org -p 2225"


# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio
alias YT="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias starwars="telnet towel.blinkenlights.nl"

# TeX
alias Txa="cp ~/Documents/LaTeX/article.tex"
alias Txs="cp ~/Documents/LaTeX/beamer.tex"
alias Txh="cp ~/Documents/LaTeX/handout.tex"

alias \
h="cd ~/ && ls -a" \
d="cd ~/Documents && ls -a" \
D="cd ~/Downloads && ls -a" \
m="cd ~/Music && ls -a" \
pp="cd ~/Pictures && ls -a" \
vv="cd ~/Videos && ls -a" \
cf="cd ~/.config && ls -a" \
sc="cd ~/.scripts && ls -a" \
mn="cd /mnt && ls -a" \
e="cd /etc && ls -a" \
a="cd ~/Documents/ants && ls -a" \
wl="ranger ~/wallpapers" \
usb="cd /run/media/dan && ls" \
bf="$EDITOR ~/.key_files" \
bd="$EDITOR ~/.key_directories" \
cfb="$EDITOR ~/.bashrc" \
cfz="$EDITOR ~/.zshrc" \
cfv="$EDITOR ~/.vimrc" \
cfr="$EDITOR ~/.config/ranger/rc.conf" \
cfi="$EDITOR ~/.config/i3/config" \
cfq="$EDITOR ~/.config/qutebrowser/config.py" \
cfm="$EDITOR ~/.config/mutt/muttrc" \
cft="$EDITOR ~/.config/termite/config" \
eb="$EDITOR ~/Documents/LaTeX/uni.bib" \
art="$EDITOR ~/Documents/LaTeX/article.tex" \
cfp="$EDITOR ~/.config/polybar/config" \
cfd="$EDITOR ~/.Xdefaults" \
cfu="$EDITOR ~/.config/newsboat/urls" \
cfn="$EDITOR ~/.config/newsboat/config" \
cfA="$EDITOR ~/.asoundrc" \
cfmb="$EDITOR ~/.config/ncmpcpp/bindings" \
cfmc="$EDITOR ~/.config/ncmpcpp/config" \
cfmpd="$EDITOR ~/.config/mpd/mpd.conf" \
cfM="$EDITOR ~/.config/mpd/mpd.conf" \
er="$EDITOR ~/.referbib" \

shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}
#news() { curl -O $(curl -s https//outline.com/"$@"u:
#fc-search() { grep $(fc-list | awk -F".ttf: " "{print$2}" | grep "style") ;}
#fs() { fc-list && awk -F".ttf: " "{print$2}" && grep "style" && grep "$@" ;}

#fss() { fc-list | awk -F'.ttf: ' '{print$2}' | grep $@ ;}
# fcs() { grep $(fc-list | awk -F".ttf: " "{print$2}" | grep style) ;}

ant() { mkdir "$@" && cd "$@" && wget  $(curl -s https://www.antweb.org/images.do?genus="$@" | grep thumbview.jpg | awk -F'" ' '{print$2}' | awk -F'src="' '{print$2}' | grep "_p_") ;}

# aw() { curl -s https://www.antweb.org/images.do?genus="$@" | grep '<div class="name">' | awk -F'">' '{print$4}' | awk -F'</' '{print$1}' ;}


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs dir rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs status load)
