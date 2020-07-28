#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
nc='\033[0m'

# These are the packages that I want to have when I setup a new machine.
# Many of them are stupid but you need stupid in the terminal!

sudo -v

# Update the cache and install updates before starting
sudo apt update && sudo apt upgrade -y

# Clear the terminal after the updates are done
clear

# Check if tmux is installed, if not install it.
if ! [ -x "$(command -v tmux)" ]; then
	sudo apt install -y tmux
else
	printf "${green}tmux already installed.\n"
fi

# Check if tldr is installed, if not install it.
if ! [ -x "$(command -v tldr)" ]; then
	sudo apt install -y tldr
else
	printf "${green}tldr already installed.\n"
fi

# Check if vim is installed, if not install it.
if ! [ -x "$(command -v vim)" ]; then
	sudo apt install -y vim
else
	printf "${green}vim already installed.\n"
fi

# Check if ssh is installed, if not install it.
if ! [ -x "$(command -v ssh)" ]; then
	sudo apt install -y openssh-server
else
	printf "${green}openssh-server already installed.\n"
fi

# Clear the terminal after everything is installed
clear

# Information that everything is installed 
if ! [ -x "$(command -v tmux)" ]; then
	printf "${red}tmux not installed!\n"
else
	printf "${green}tmux installed!\n"
fi

if ! [ -x "$(command -v tldr)" ]; then
	printf "${red}tldr not installed!\n"
else
	printf "${green}tldr installed!\n"
fi

if ! [ -x "$(command -v vim)" ]; then
	printf "${red}vim not installed!\n"
else
	printf "${green}vim installed!\n"
fi

if ! [ -x "$(command -v ssh)" ]; then
	printf "${red}ssh not installed!\n"
else
	printf "${green}ssh installed!${nc}\n"
fi

# Create some directories
mkdir $HOME/.config/newsboat
mkdir $HOME/.config/vifm
mkdir $HOME/.ssh
mkdir $HOME/.tmux
mkdir $HOME/.vim

# Clone some repos
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/vifm/vifm-colors ~/.config/vifm/colors

# Link some of the files
ln -s $HOME/dotfiles/newsboat-config $HOME/.config/newsboat/config
ln -s $HOME/dotfiles/newsboat-urls $HOME/.config/newsboat/urls
ln -s $HOME/dotfiles/.tmux.conf $HOME/$filename
ln -s $HOME/dotfiles/.vimrc $HOME/$filename
ln -s $HOME/dotfiles/vifmrc $HOME/.config/vifm/$filename
ln -s $HOME/dotfiles/.vim-template.html $HOME/.vim/$filename
ln -s $HOME/dotfiles/.vim-template.bash $HOME/.vim/$filename
rm $HOME/.bashrc
ln -s $HOME/dotfiles/.bashrc $HOME/$filename

# vim command
echo -ne '\n' | vim +PluginInstall +qall

# Cleaning
sudo apt autoremove -y

printf "${red}Make sure to clone your other repos.\n"
