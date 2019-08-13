#!/bin/sh
#Author Daniel Bäckman

cd $HOME
ln -s $HOME/dot-files/.tmux.conf $HOME/$filename
ln -s $HOME/dot-files/.vimrc $HOME/$filename
mkdir $HOME/.vim
ln -s $HOME/dot-files/.vim-template.html $HOME/.vim/$filename
ln -s $HOME/dot-files/.vim-template.bash $HOME/.vim/$filename
#mkdir $HOME/.ssh
#ln -s $HOME/dot-files/.ssh_config $HOME/.ssh/config
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
