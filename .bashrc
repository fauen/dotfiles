# My personal .bashrc file

if [ -e ~/src/dotfiles/bash/path ]; then
	source ~/src/dotfiles/bash/path
else
	echo "Can't find path file."
fi

# Checks if the shell is interactive and if it is, setup the prompt.
if [[ $- == *i* ]]; then
	source ~/src/dotfiles/bash/prompt
else
	echo "Not an interactive shell, prompt can't be setup."
fi

# The below checks if the files exist and if they so sources them.
if [ -e ~/src/dotfiles/bash/functions ]; then
	source ~/src/dotfiles/bash/functions
else
	echo "Can't find the functions file."
fi

if [ -e ~/src/dotfiles/bash/aliases ]; then
	source ~/src/dotfiles/bash/aliases
else
	echo "Can't find the aliases file."
fi

# Exports which is platform specific
if [ -e ~/src/dotfiles/bash/export ]; then
	source ~/src/dotfiles/bash/export
else
	echo "Can't find the export file."
fi


# History specific settings
HISTTIMEFORMAT="%F %T "
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
