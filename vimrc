set nocompatible

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

" Mouse
:set mouse=a

let mapleader=","

" Status bar
set laststatus=2

set guifont=Menlo:h13

" syntaxsier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>lon
filetype plugin indent on

" Default color scheme
color desert

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
