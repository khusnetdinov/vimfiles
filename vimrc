"*****************************************************************************
""" Loading vim rc and plugins settings
"*****************************************************************************

let mapleader = ","
filetype off

"*****************************************************************************
""" Plugins load settings
"*****************************************************************************

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

let g:vim_bootstrap_editor = "vim"
let g:vim_bootstrap_langs = "javascript,coffescript,typescript,ruby,erlang,elixir,html,slim,haml,erb,ejs,css,scss,sass,lua,go,python"

if !filereadable(vimvimplug_exists)
  echo ""
  echo "Installing Vim-Plug..."
  echo ""

  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.vim/plugged'))

"*****************************************************************************
""" Functions
"*****************************************************************************

"" Functions
"function! NumberToggle()
  "if(&relativenumber == 1)
    "set number
  "else
    "set relativenumber
  "endif
"endfunc
"nnoremap <C-n> :call NumberToggle()<cr>

"*****************************************************************************
""" Base setting
"*****************************************************************************

"" Compability
if has('vim_starting')
  set nocompatible
endif

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs.
set tabstop=2
set shiftwidth=2
set softtabstop=0
set shiftround
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Backup
let s:backup="false"
if s:backup
  set backup
  set backupdir=~/.vim/temp/backup
  set directory=~/.vim/temp/swap
else
  set nobackup
  set nowritebackup
  set noswapfile
endif

set secure
set autoread
set autowrite

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

set history=500

set lazyredraw

"*****************************************************************************
""" Visual settings
"*****************************************************************************

"" Linenumbers
set ruler
set number
autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set number

"" Status line
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

set modeline
set modelines=10

"" Trailing symbols
set list listchars=tab:··,trail:·
highlight ColorColumn ctermbg=LightGray

"" Cursor
set cursorline

"" Split
set splitbelow
set splitright

"" Wildmenu
set wildmenu
set wildmode=list:full

"" Switching mode tricks
set noesckeys
set ttimeout
set ttimeoutlen=1

set t_Co=256
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=LightGray

"*****************************************************************************
""" Theme
"*****************************************************************************


"*****************************************************************************
""" Abbreviations
"*****************************************************************************
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

syntax on
