set nocompatible
set encoding=utf-8

set nonumber
set ruler
set cursorline
set showcmd

" Buffer
set hidden
" autocmd BufEnter * silent! lcd %:p:h

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

" Indent
set autoindent
set si
set cindent
set copyindent

" Backup
set nobackup
set nowb
set noswapfile

" Cursor highlight
set cursorline
set cursorcolumn

set gdefault

" Mouse
:set mouse=a

" Map leader
let mapleader=","

" Status bar
set laststatus=2
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction

" Font
set guifont=Menlo:h14

" Wild menu
set wildmenu
set wildmode=list:full

set so=7

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv 

" syntaxsier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Fast saving and quit
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

" fast Esc
imap jj <Esc>

" Syntax and indent by filetype
syntax on
filetype plugin indent on

" Default color scheme
set background=dark
color moria 

" NERDtree
map <silent> <leader>z :NERDTreeToggle<CR>

call pathogen#infect()

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
