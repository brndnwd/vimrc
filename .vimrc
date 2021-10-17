set nocompatible  " potentially required for some unclear functionality
filetype off  " required

" be sure to clone Vundle repo:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" include Vundle in runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" my plugins
Plugin 'vim-scripts/indentpython.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
" end of my plugins

call vundle#end()  " required
filetype plugin indent on  " required

" set split functionality
set splitbelow
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" relative line numbers
set rnu

" PEP 8 stuff
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set expandtab
    \set fileformat=unix
    \set encoding=utf-8

" airline config
let g:airline_left_sep = '◣'
let g:airline_right_sep = '◥'
let g:airline_symbols_ascii = 1

" gruvbox options
set bg=dark
if (has("termguicolors"))
	set termguicolors
endif
autocmd vimenter * ++nested colorscheme gruvbox
