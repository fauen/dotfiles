# #!/bin/bash

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
	printf "tmux already installed.\n"
fi

# Check if tldr is installed, if not install it.
if ! [ -x "$(command -v tldr)" ]; then
	sudo apt install -y tldr
else
	printf "tldr already installed.\n"
fi

# Check if vim is installed, if not install it.
if ! [ -x "$(command -v vim)" ]; then
	sudo apt install -y vim
else
	printf "vim already installed.\n"
fi

# Check if ssh is installed, if not install it.
if ! [ -x "$(command -v ssh)" ]; then
	sudo apt install -y openssh-server
else
	printf "openssh-server already installed.\n"
fi

# Check if dircolors is installed, if not install it.
if ! [ -x "$(command -v dircolors)" ]; then
	sudo apt install -y dircolors
else
	printf "dircolors already installed.\n"
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

if [ -x "$(command -v dircolors)" ];then
	dircolors -p > $HOME/.dircolors
	sed -i 's/DIR 01;34/DIR 01;33/' .dircolors
else
	echo "dircolors is not installed. "
fi
	
printf "${red}Make sure to clone your other repos.\n"
