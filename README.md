# Installing

copy the .vimrc file in to your home directory

clone the vundle,
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

open up copied .vimrc file in vim and execute command :PluginInstall


### activating YCM

Install the YCM.

** on centos - install gcc-g++
** cmake is a pre-requisite
** python-dev is a pre-requisite
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
[installation guide](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-installation)


### nerdtree

[project page](https://github.com/scrooloose/nerdtree)


###cscope

vim does not add the cscope.out file as a database by default. use the following in
.vimrc file
```bash
if has("cscope")
        set csprg=/usr/bin/cscope
        set csto=0
        set cst 
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        " else add database pointed to by environment
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
        set csverb
endif
```




###YCM

YCM installation is not working with quick installtion steps. Try full installation.
(https://github.com/Valloric/YouCompleteMe)
