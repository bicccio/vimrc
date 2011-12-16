set nocompatible
set showmode
set encoding=utf-8

set nonumber
set ruler
set cursorline
set showcmd

set hidden

" Whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start

set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set autoindent
set si
set wrap
set copyindent

set nobackup
set nowb
set noswapfile

set cursorline
set cursorcolumn

set gdefault

" Mouse
:set mouse=a

let mapleader=","

" Status bar
set laststatus=2

set guifont=Menlo:h14

set wildmenu
set wildmode=list:full

" syntaxsier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>lon

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

vmap Q gq
nmap Q gqap

imap jj <Esc>

syntax on
filetype plugin indent on

" Default color scheme
set t_Co=256
set background=dark
color desert 

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
