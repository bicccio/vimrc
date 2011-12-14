set nocompatible

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Mouse
:set mouse=a

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

" Status bar
set laststatus=2

set guifont=Menlo:h13

let mapleader=","

set backspace=indent,eol,start

syntax on
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
