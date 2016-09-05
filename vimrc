let s:plugin_shell = 'plugins/shell'
if filereadable(s:plugin_shell)
  execute 'source' s:plugin_shell
endif
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

let s:plugin_functions = 'plugins/functions'
if filereadable(s:plugin_functions)
  execute 'source' s:plugin_functions
endif

let s:plugin_commands = 'plugins/commands'
if filereadable(s:plugin_commands)
  execute 'source' s:plugin_commands
endif

let s:plugin_general = 'plugins/general'
if filereadable(s:plugin_general)
  execute 'source' s:plugin_general
endif

let s:plugin_mappings = 'plugins/mappings'
if filereadable(s:plugin_mappings)
  execute 'source' s:plugin_mappings
endif

let s:plugin_visual = 'plugins/visual'
if filereadable(s:plugin_visual)
  execute 'source' s:plugin_visual
endif

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

let s:plugin_endwise = 'plugins/endwise'
if filereadable(s:plugin_endwise)
  execute 'source' s:plugin_endwise
endif

let s:plugin_navigation = 'plugins/navigation'
if filereadable(s:plugin_navigation)
  execute 'source' s:plugin_navigation
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
