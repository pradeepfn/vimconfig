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


" ===========Nerdtree
let NERDTreeDirArrows=0
nmap <silent> <c-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTreeToggle
let NERDTreeShowLineNumbers=1


map <C-u> :call cscope#findInteractive(expand('<cword>'))<CR>

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
