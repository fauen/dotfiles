# My personal .bashrc file

if [[ $- == *i* ]]; then
	source ~/dotfiles/bash/prompt
else
	return
fi

if [ -e ~/dotfiles/bash/functions ]; then
	source ~/dotfiles/bash/functions
fi

if [ -e ~/dotfiles/bash/aliases ]; then
	source ~/dotfiles/bash/aliases
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
# As I have my "custom" prompt which resets the readline options I have them
# here instead of .inputec and I'm skipping set -o vi
# bind 'set editing-mode vi'
# bind 'set show-mode-in-prompt on'
# bind 'set vi-ins-mode-string I'
# bind 'set vi-cmd-mode-string N'

# Colors
if [ -x /usr/bin/dircolors ]; then
	    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

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
