" ---------------------
" GENERAL
" --------------------

" Syntax!
syntax enable
" Colorscheme!
colorscheme elflord

" Numbers
set number
" Wildmenu completion
set wildmode=longest,list,full

" Be IMproved only, required for Vundle
set nocompatible

" Highlist current line
set cursorline

" Redraw only when we need to
set lazyredraw

" Show matching parenthesis
set showmatch

" Set window title to file name.
set title
" Show partial commands.
set showcmd

" Default splits
set splitbelow
set splitright

" Code folding
set foldmethod=indent
set foldlevel=99
" Code folding with space bar
nnoremap <space> za
" Docstring for folded text
let g:SimpylFold_docstring_preview=1

" Python YCM
let g:ycm_python_binary_path = '/usr/bin/python'

" -----------
" OS SETTINGS
" -----------

" Use OS clipboard!
set clipboard=unnamed
" Fast terminal connections
set ttyfast

" ----------------------
" TABS INSTEAD OF SPACES 
" ----------------------

" Number of visual spaces per TAB
set tabstop=4
" Number of spaces in TAB when editing
set softtabstop=4

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" ---------------------
" SEARCHING 
" --------------------

" Instant search as you type
set incsearch
" Highlight matches
set hlsearch

" ---------------------
" MOVEMENT 
" ---------------------

" Enable mouse in all modes
set mouse=a

" Allow backspace in insert mode.
set backspace=indent,eol,start

" Move vertically even through wrapped lines
nnoremap j gj
nnoremap k gk

" Highlight last inserted text
nnoremap gV `[v`]

" ---------------------
" PLUGINS
" ---------------------

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

