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
" I use artistic style formtter for C/C++ - http://astyle.sourceforge.net/
Plugin 'Chiel92/vim-autoformat'

" dracula theme
Plugin 'dracula/vim'
" external error checking syntastic plugin
Plugin 'scrooloose/syntastic'

"status line plugin - airline
Plugin 'vim-airline/vim-airline'

"airline themes
Plugin 'vim-airline/vim-airline-themes'

"git plugin - https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

"Plugin 'octol/vim-cpp-enhanced-highlight'
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

" ===========cscope key bindings
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" ===========Nerdtree
let NERDTreeDirArrows=0
nmap <silent> <c-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1

" ===========YCM START
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files = 1



"============Autoformat
noremap <c-l> :Autoformat<CR>

"============Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"===========Air-line 
" http://vi.stackexchange.com/questions/5622/how-to-configure-vim-airline-plugin-to-look-like-its-own-project-screenshot
let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'
set laststatus=2
set t_Co=256

set number
" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
" This is way too simple status line
set statusline+=%f

syntax on
colorscheme dracula


filetype plugin indent on
