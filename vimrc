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

let s:plugin_navigation = 'plugins/navigation'
if filereadable(s:plugin_navigation)
  execute 'source' s:plugin_navigation
endif

let s:plugin_airline = 'plugins/airline'
if filereadable(s:plugin_airline)
  execute 'source' s:plugin_airline
endif

let s:plugin_autoformatting = 'plugins/autoformatting'
if filereadable(s:plugin_autoformatting)
  execute 'source' s:plugin_autoformatting
endif

"*****************************************************************************
call plug#end()
filetype plugin indent on
syntax on
