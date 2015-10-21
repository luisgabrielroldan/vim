#!/bin/sh

cd ~/.vim
ln -sf ~/.vim/vimrc ~/.vimrc
git submodule update --init
vim +PluginInstall +qall

