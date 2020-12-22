" ---------------------
" PLUGIN LIST
" ---------------------

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'flazz/vim-colorschemes'
Plug 'ParamagicDev/vim-medic_chalk'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'mg979/vim-visual-multi'
Plug 'preservim/nerdcommenter'

Plug 'editorconfig/editorconfig-vim'

Plug 'lervag/vimtex'

call plug#end()

" ---------------------
"  Colorscheme
" ---------------------

" Fix italics in Vim
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

set term=xterm
set t_Co=256
set termguicolors
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Colorscheme!
if !has("gui_running")
    colorscheme pride
else
    colorscheme medic_chalk
endif

" Font
set macligatures
set guifont=FiraCode-Retina:h12

" ---------------------
" GENERAL
" --------------------

" Syntax!
syntax enable
" For unicode
set encoding=UTF-8

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
set nowrap
set mouse=a

" Allow backspace in insert mode.
set backspace=indent,eol,start

" Move vertically even through wrapped lines
nnoremap j gj
nnoremap k gk

" Highlight last inserted text
nnoremap gV `[v`]

" ---------------------
" PLUGIN CONFIG 
" ---------------------

" ------
" VIMTEX 

" Setting vimtex flavor
let g:tex_flavor = 'latex'

" -----
" CTRLP

" Ignore files in gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" ---
" COC

" Tab as coc completion
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" --------------
" NERD COMMENTER

" D-/ as nerd commenter toggle
nmap <D-/>   <Plug>NERDCommenterToggle
vmap <D-/>   <Plug>NERDCommenterToggle<CR>gv
imap <D-/>   <ESC><Plug>NERDCommenterToggle

