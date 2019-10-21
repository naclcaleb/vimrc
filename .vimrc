call plug#begin('~/.vim/vim-plugged')

Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-endwise'

call plug#end()
syntax on 
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=16

let g:airline_theme='onedark'

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set softtabstop=4

colorscheme onedark
:set number
:set cursorline
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
