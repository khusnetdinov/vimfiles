"*****************************************************************************
""" Loading vim rc and plugins settings
"*****************************************************************************

set nocompatible
let mapleader=","
filetype off

"*****************************************************************************
""" Base plugins loading
"*****************************************************************************

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

let g:vim_bootstrap_editor="vim"
let g:vim_bootstrap_langs="javascript,coffescript,typescript,ruby,erlang,elixir,html,slim,haml,erb,ejs,css,scss,sass,lua,go,python,md"

if !filereadable(vimplug_exists)
  echo ""
  echo "Installing pligins..."
  echo ""

  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  let g:not_finish_vimplug="yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.vim/plugged'))

"*****************************************************************************
""" Functions
"*****************************************************************************

"*****************************************************************************
""" Commands
"*****************************************************************************

"*****************************************************************************
""" Base setting
"*****************************************************************************

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
set timeout ttimeoutlen=100 timeoutlen=5000

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
highlight ColorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"" Cursor
set cursorline
set cursorcolumn
highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"" Split
set splitbelow
set splitright

"" Wildmenu
set wildmenu
set wildmode=list:full

"" Switching mode tricks
set ttimeout
set ttimeoutlen=1

set t_Co=256
set textwidth=80
set colorcolumn=+1
highlight ColorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"*****************************************************************************
""" Theme and colors
"*****************************************************************************

Plug 'flazz/vim-colorschemes'

colorscheme jellybeans

let vim_colorschemes_exists=expand('~/.vim/colors')

if !filereadable(vim_colorschemes_exists)
  silent !ln -s ~/.vim/plugged/vim-colorschemes/colors ~/.vim/colors
endif

"*****************************************************************************
""" Settings: start
"*****************************************************************************

"*****************************************************************************
""" Settings: end
"*****************************************************************************

"*****************************************************************************
""" Autoformatting files
"*****************************************************************************

autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.erb  :%s/\s\+$//e
autocmd BufWritePre *.ejs  :%s/\s\+$//e
autocmd BufWritePre *.jade :%s/\s\+$//e

autocmd BufWritePre *.css  :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.sass :%s/\s\+$//e
autocmd BufWritePre *.less :%s/\s\+$//e

autocmd BufWritePre *.js   :%s/\s\+$//e
autocmd BufWritePre *.es6 :%s/\s\+$//e
autocmd BufWritePre *.coffee :%s/\s\+$//e
autocmd BufWritePre *.ts  :%s/\s\+$//e

autocmd BufWritePre *.elm :%s/\s\+$//e
autocmd BufWritePre *.ex :%s/\s\+$//e
autocmd BufWritePre *.erl :%s/\s\+$//e

autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.lua :%s/\s\+$//e
autocmd BufWritePre *.md :%s/\s\+$//e

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

call plug#end()
filetype plugin indent on
syntax on
