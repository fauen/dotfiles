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

# Exports which is hostname specific
if [ -e ~/src/dotfiles/bash/export ]; then
	source ~/src/dotfiles/bash/export
fi


# History specific settings
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

# PS2
PS2="$ >>> "

# Set bash to use vim keys
# As I have my "custom" prompt which resets the readline options I have them
# here instead of .inputec and I'm skipping set -o vi
# bind 'set editing-mode vi'
# bind 'set show-mode-in-prompt on'
# bind 'set vi-ins-mode-string I'
# bind 'set vi-cmd-mode-string N'
