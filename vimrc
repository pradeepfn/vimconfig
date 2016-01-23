set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start
" ===========Vundle START
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'terryma/vim-expand-region'
Plugin 'Chiel92/vim-autoformat'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/syntastic'
" " All of your Plugins must be added before the following line
call vundle#end()  


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


" ===========Nerdtree
let NERDTreeDirArrows=0
nmap <silent> <c-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1

" ===========YCM START
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files = 1


set number
" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
set statusline+=%f

:set spell spelllang=en_us

syntax on
"the Filetype event get trigged, only if we set this.
filetype plugin indent on
