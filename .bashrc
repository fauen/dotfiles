# My personal .bashrc file

if [ -e ~/dev/dotfiles/bash/path ]; then
	source ~/dev/dotfiles/bash/path
else
	echo "Can't find path file."
fi

# Checks if the shell is interactive and if it is, setup the prompt.
if [[ $- == *i* ]]; then
	source ~/dev/dotfiles/bash/prompt
else
	echo "Not an interactive shell, prompt can't be setup."
fi

# The below checks if the files exist and if they so sources them.
if [ -e ~/dev/dotfiles/bash/functions ]; then
	source ~/dev/dotfiles/bash/functions
else
	echo "Can't find the functions file."
fi

if [ -e ~/dev/dotfiles/bash/aliases ]; then
	source ~/dev/dotfiles/bash/aliases
else
	echo "Can't find the aliases file."
fi

# Exports which is platform specific
if [ -e ~/dev/dotfiles/bash/export ]; then
	source ~/dev/dotfiles/bash/export
else
	echo "Can't find the export file."
fi


# History specific settings
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export HISTFILESIZE=20000

# PS2
PS2="$ >>> "

# Set bash to use vim keys
# As I have my "custom" prompt which resets the readline options I have them
# here instead of .inputec and I'm skipping set -o vi
# bind 'set editing-mode vi'
# bind 'set show-mode-in-prompt on'
# bind 'set vi-ins-mode-string I'
# bind 'set vi-cmd-mode-string N'

# Why is this here? I don't remember at all.
# . "$HOME/.local/bin/env"
