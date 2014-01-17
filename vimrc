"------------------------------------------------------------------------------
" important
"------------------------------------------------------------------------------
set nocompatible

"------------------------------------------------------------------------------
" multi-byte character
"------------------------------------------------------------------------------
set encoding=utf-8

"------------------------------------------------------------------------------
" message anf info
"------------------------------------------------------------------------------
set ruler
set showcmd

"------------------------------------------------------------------------------
" syntax, highlighting and spelling
"------------------------------------------------------------------------------
set hlsearch
set cursorline
set cursorcolumn
syntax on
filetype plugin indent on
set background=dark

if exists('+colorcolumn')
    set colorcolumn=80    " display a line in column 80 to show you
    " where to line break.
endif

" json filetype as javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

"------------------------------------------------------------------------------
" multiple windows
"------------------------------------------------------------------------------
set hidden
set laststatus=2
" Autocmd BufEnter * silent! lcd %:p:h

"------------------------------------------------------------------------------
" displaying text
"------------------------------------------------------------------------------
set number
set nowrap
set list listchars=tab:\ \ ,trail:·
set listchars+=extends:>
set listchars+=precedes:<
set so=7
set cmdheight=2

" Define characters to show when you show formatting
" stolen from https://github.com/tpope/vim-sensible
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
    if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
        let &listchars = "tab:\u21e5
        ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
    endif
endif

"------------------------------------------------------------------------------
" tabs and indenting
"------------------------------------------------------------------------------
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab

set autoindent
set smartindent
set cindent
set copyindent

"------------------------------------------------------------------------------
" editing text
"------------------------------------------------------------------------------
set backspace=indent,eol,start
set showmatch

"------------------------------------------------------------------------------
"  selecting text
"------------------------------------------------------------------------------
set clipboard=unnamed        " Yank to the system clipboard by default

"------------------------------------------------------------------------------
" moving around, searching and patterns
"------------------------------------------------------------------------------
set incsearch
set ignorecase
set smartcase

"------------------------------------------------------------------------------
" reading and writing files
"------------------------------------------------------------------------------
set nobackup
set nowb

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif
" Remove trailing whitespaces before write
autocmd BufWritePre * :%s/\s\+$//e

"------------------------------------------------------------------------------
" the swap file
"------------------------------------------------------------------------------
set noswapfile

"------------------------------------------------------------------------------
" various
"------------------------------------------------------------------------------
set gdefault

"------------------------------------------------------------------------------
" using the mouse
"------------------------------------------------------------------------------
:set mouse=a

"------------------------------------------------------------------------------
" command line editing
"------------------------------------------------------------------------------
set wildmenu
set wildmode=list:full

"------------------------------------------------------------------------------
" mapping
"------------------------------------------------------------------------------
" Map leader
let mapleader=","

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Syntaxsier navigation between split windows
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

vmap Q gq
nmap Q gqap

" Fast Esc
imap jj <Esc>

" Bubbling
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

map ,, <C-^>

"------------------------------------------------------------------------------
"  terminal
"------------------------------------------------------------------------------
set ttyfast                              " this is the 21st century, people

"------------------------------------------------------------------------------
"  status bar formatting
"------------------------------------------------------------------------------
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
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

"------------------------------------------------------------------------------
"  font & colors
"------------------------------------------------------------------------------
set guifont=Menlo:h14
color molokai


"---------------------------------------------------
"---------------------------------------------------
" PLUGINS
"---------------------------------------------------
"---------------------------------------------------
"
"---------------------------------------------------
" Pathogen
" --------------------------------------------------
execute pathogen#infect()

"---------------------------------------------------
" NERDtree
" --------------------------------------------------
map <silent> <leader>z :NERDTreeToggle<CR>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

"---------------------------------------------------
" Command-T
" --------------------------------------------------
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

"---------------------------------------------------
" local vim config
" --------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
