#!/bin/bash

git clone https://github.com/josuesasilva/vim-with-neobundle.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
mkdir -p ~/.fonts
cp -R ~/.vim/font/* ~/.fonts
fc-cache -vf
