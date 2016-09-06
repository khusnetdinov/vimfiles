"*****************************************************************************
""" Loading vim rc and plugins settings
"*****************************************************************************

set nocompatible
let mapleader=","
filetype off

"*****************************************************************************
""" Base plugins loading
"*****************************************************************************

let home = '~/.vim/'
let vimplug_exists=expand(home . 'autoload/plug.vim')

if !filereadable(vimplug_exists)
  echo ""
  echo "Installing pligins..."
  echo ""

  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  let g:not_finish_vimplug="yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand(home . 'plugged'))

"*****************************************************************************

let s:plugin_general = 'settings/general'
if filereadable(s:plugin_general)
  execute 'source' s:plugin_general
endif

let s:plugin_functions = 'settings/functions'
if filereadable(s:plugin_functions)
  execute 'source' s:plugin_functions
endif

let s:plugin_commands = 'settings/commands'
if filereadable(s:plugin_commands)
  execute 'source' s:plugin_commands
endif

let s:plugin_mappings = 'settings/mappings'
if filereadable(s:plugin_mappings)
  execute 'source' s:plugin_mappings
endif

let s:plugin_visual = 'settings/visual'
if filereadable(s:plugin_visual)
  execute 'source' s:plugin_visual
endif

"*****************************************************************************

let s:plugin_themes = 'plugins/themes'
if filereadable(s:plugin_themes)
  execute 'source' s:plugin_themes
endif

let s:plugin_comments = 'plugins/comments'
if filereadable(s:plugin_comments)
  execute 'source' s:plugin_comments
endif

let s:plugin_abolish = 'plugins/abolish'
if filereadable(s:plugin_abolish)
  execute 'source' s:plugin_abolish
endif

let s:plugin_autoformatting = 'plugins/autoformatting'
if filereadable(s:plugin_autoformatting)
  execute 'source' s:plugin_autoformatting
endif

let s:plugin_airline = 'plugins/airline'
if filereadable(s:plugin_airline)
  execute 'source' s:plugin_airline
endif

let s:plugin_eunuch = 'plugins/eunuch'
if filereadable(s:plugin_eunuch)
  execute 'source' s:plugin_eunuch
endif

let s:plugin_endwise = 'plugins/endwise'
if filereadable(s:plugin_endwise)
  execute 'source' s:plugin_endwise
endif

let s:plugin_git = 'plugins/git'
if filereadable(s:plugin_git)
  execute 'source' s:plugin_git
endif

let s:plugin_nerdtree = 'plugins/nerdtree'
if filereadable(s:plugin_nerdtree)
  execute 'source' s:plugin_nerdtree
endif

let s:plugin_repeat = 'plugins/repeat'
if filereadable(s:plugin_repeat)
  execute 'source' s:plugin_repeat
endif

let s:plugin_syntax = 'plugins/syntax'
if filereadable(s:plugin_syntax)
  execute 'source' s:plugin_syntax
endif

let s:plugin_vimshell = 'plugins/vimshell'
if filereadable(s:plugin_vimshell)
  execute 'source' s:plugin_vimshell
endif

"*****************************************************************************

call plug#end()
filetype plugin indent on
syntax on
