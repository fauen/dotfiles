#!/bin/sh
#Author Daniel Bäckman

cd $HOME
ln -s $HOME/dotfiles/.tmux.conf $HOME/$filename
ln -s $HOME/dotfiles/.vimrc $HOME/$filename
mkdir $HOME/.vim
ln -s $HOME/dotfiles/.vim-template.html $HOME/.vim/$filename
ln -s $HOME/dotfiles/.vim-template.bash $HOME/.vim/$filename
#mkdir $HOME/.ssh
#ln -s $HOME/dot-files/.ssh_config $HOME/.ssh/config
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
vim +PluginInstall +qall
