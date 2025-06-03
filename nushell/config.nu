# config.nu
#
# Installed by:
# version = "0.103.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

# Aliases

## Aliases common
alias ll = ls -al
alias la = ls -a

## Aliases for GitHub
alias gs = git status
alias gp = git pull
alias gitter = git add . and git commit -m "updates" and git push

## Aliases for updates
alias windows-update = sudo apt update and sudo apt upgrade -y and sudo apt autoremove

## Aliases for vim
alias vimplug = vim +PlugInstall +qall

# Add homebrew to the path
$env.path ++= ["/opt/homebrew/bin"]

# Make sure that vim is the editor for the configuration.
$env.EDITOR = "vim"

# Set config directory.
# $env.XDG_CONFIG_HOME = ~/.config
# $env.XDG_DATA_HOME = ~/.config
# $env.XDG_DATA_HOME = ""

$env.PROMPT_COMMAND_RIGHT = {
	date now | format date "%Y-%m-%d %T"
	}

# Functions

def wttr [name?: string] {
	if ($name | is-not-empty) {
		http get https://wttr.in?($name)
	} else {
		http get https://wttr.in
	}
}

def tmuxs [name = "main"] {
	tmux new-session -s ($name)
}

def week [] {
	http get https://weekie.backman.io
}

def myip [--full] {
	if $full {
		http get https://ipall.backman.io
	} else {
		http get https://ip.backman.io 
	}
}

fastfetch

# Remove the banner
$env.config.show_banner = false
