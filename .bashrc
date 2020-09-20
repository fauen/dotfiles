# My personal .bashrc file

if [[ $- == *i* ]]; then
	source ~/dotfiles/prompt
else
	return
fi

if [ -e ~/dotfiles/functions ]; then
	source ~/dotfiles/functions
fi

if [ -e ~/dotfiles/aliases ]; then
	source ~/dotfiles/aliases
fi

# History specific settings
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

# Exports
export EDITOR=vim
export VISUAL=vim
export TERM=xterm-256color

# PS2
PS2="$ >>> "

# Set bash to use vim keys
# set -o vi

# Launch neofetch with bash start
if [ -x /usr/bin/screenfetch ]; then
	screenfetch
fi
cd

# This is only used for WSL
if [[ $(uname -r) == *"microsoft"* ]]; then
	export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
	export LIBGL_ALWAYS_INDIRECT=1
fi
