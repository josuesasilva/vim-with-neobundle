#!/bin/bash

git clone https://github.com/josuesasilva/vim-with-neobundle.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
mkdir -p ~/.fonts
cp -R ~/.vim/fonts/* ~/.fonts
fc-cache -vf
vim
