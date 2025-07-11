# My personal .bashrc file

if [ -e ~/src/dotfiles/bash/path ]; then
	source ~/src/dotfiles/bash/path
fi

# Checks if the shell is interactive and if it is, setup the prompt.
if [[ $- == *i* ]]; then
	source ~/src/dotfiles/bash/prompt
else
	return
fi

# Both of the below checks if the files exist and if they so sources them.
if [ -e ~/src/dotfiles/bash/functions ]; then
	source ~/src/dotfiles/bash/functions
fi

if [ -e ~/src/dotfiles/bash/aliases ]; then
	source ~/src/dotfiles/bash/aliases
fi


# History specific settings
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

# Exports
export EDITOR=vim
export VISUAL=vim
export TERM=xterm-256color
#export PATH="$HOME/bin:$PATH"

if [[ $(uname) == "Darwin" ]]; then
	#export PATH="/opt/homebrew/bin:$PATH"
	export BASH_SILENCE_DEPRECATION_WARNING=1
fi

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
#if [ -x /usr/bin/dircolors ]; then
#	    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#fi

# Launch screenfetch (if installed) with bash start, but not really used anymore.
#if [ -x /usr/bin/screenfetch ]; then
#	screenfetch
#fi
#cd

# This is only used for WSL, I'm not using Windows at all so no need to use this. Might not even work.
#if [[ $(uname -r) == *"microsoft"* ]]; then
#	export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
#	export LIBGL_ALWAYS_INDIRECT=1
#	export BROWSER=/mnt/c/Program/Google/Chrome/Application/chrome.exe
#fi
