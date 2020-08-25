# my personal .bashrc file

# History specific settings
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

# Aliases
alias ls='ls --color=always'
alias ll='ls -alF'
alias la='ls A'
alias l='ls -CF'
alias grep='grep --color=always'
alias myip='curl ipv4.icanhazip.com'
alias hackmainframe='echo "[32m"; hd /dev/urandom'
alias weather=wttr

# Aliases for GitHub
alias gs='git status'
alias gp='git pull'
alias gitter='git add .; git commit -m "updates"; git push'
alias gits='git add .; git commit; git push'

# Aliases for updates
alias windows-update='sudo apt update; sudo apt upgrade -y; sudo apt autoremove'

# Exports
export EDITOR=vim
export VISUAL=vim
export TERM=xterm-256color

# PS1
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '

# PS2
PS2='$> '

# Colors
if [ -x /usr/bin/dircolors ]; then
	    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Set bash to use vim keys
# set -o vi

# Launch neofetch with bash start
if [ -x /usr/bin/screenfetch ]; then
	screenfetch
fi
cd

# This is only used for WSL
if [[ $(uname -r) == *"microsoft"* ]]; then
	export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
	export LIBGL_ALWAYS_INDIRECT=1
fi

# Functions
wttr()
{
	if [ -z $1 ]
	then
		curl wttr.in/?m
	else
		curl wttr.in/${1}?m
	fi
}
