vim-with-neobundle
==================

My vim with Neobundle plugin manager

### Install:

**OPTIONAL** Backup your existing ~/.vimrc file and ~/.vim folder

**OPTIONAL** Remove your existing ~/.vimrc file and ~/.vim folder

**The automatic installer**

`curl -L https://raw.github.com/josuesasilva/vim-with-neobundle/master/install.sh | sh`

**The manual way**
1.Clone the repository

`git clone https://github.com/josuesasilva/vim-with-neobundle.git ~/.vim`

2.Make a link from the vim config to your `$HOME`

`ln -sf ~/.vim/.vimrc ~/.vimrc`

3.Install the custom font

`mkdir -p ~/.fonts`

`cp -R ~/.vim/fonts/* ~/.fonts`

`fc-cache -vf`

4.Start vim to complete install
