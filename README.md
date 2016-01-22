# vimconfig

copy the vundle settings in to .vimrc file.
(https://github.com/VundleVim/Vundle.vim)


### activating YCM

Install the YCM.

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
