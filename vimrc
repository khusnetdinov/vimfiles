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

let s:plugin_ack = 'plugins/ack'
if filereadable(s:plugin_ack)
  execute 'source' s:plugin_ack
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

let s:plugin_ctrlp = 'plugins/ctrlp'
if filereadable(s:plugin_ctrlp)
  execute 'source' s:plugin_ctrlp
endif

let s:plugin_eunuch = 'plugins/eunuch'
if filereadable(s:plugin_eunuch)
  execute 'source' s:plugin_eunuch
endif

let s:plugin_endwise = 'plugins/endwise'
if filereadable(s:plugin_endwise)
  execute 'source' s:plugin_endwise
endif

let s:plugin_delimitmate = 'plugins/delimitmate'
if filereadable(s:plugin_delimitmate)
  execute 'source' s:plugin_delimitmate
endif

let s:plugin_git = 'plugins/git'
if filereadable(s:plugin_git)
  execute 'source' s:plugin_git
endif

let s:plugin_identation = 'plugins/identation'
if filereadable(s:plugin_identation)
  execute 'source' s:plugin_identation
endif

let s:plugin_nerdtree = 'plugins/nerdtree'
if filereadable(s:plugin_nerdtree)
  execute 'source' s:plugin_nerdtree
endif

let s:plugin_repeat = 'plugins/repeat'
if filereadable(s:plugin_repeat)
  execute 'source' s:plugin_repeat
endif

let s:plugin_session = 'plugins/session'
if filereadable(s:plugin_session)
  execute 'source' s:plugin_session
endif

let s:plugin_vimshell = 'plugins/vimshell'
if filereadable(s:plugin_vimshell)
  execute 'source' s:plugin_vimshell
endif

"*****************************************************************************

let s:plugin_html = 'plugins/languages/html'
if filereadable(s:plugin_html)
  execute 'source' s:plugin_html
endif

let s:plugin_haml = 'plugins/languages/haml'
if filereadable(s:plugin_haml)
  execute 'source' s:plugin_haml
endif

let s:plugin_slim = 'plugins/languages/slim'
if filereadable(s:plugin_slim)
  execute 'source' s:plugin_slim
endif

let s:plugin_jade = 'plugins/languages/jade'
if filereadable(s:plugin_jade)
  execute 'source' s:plugin_jade
endif

let s:plugin_javascript = 'plugins/languages/javascript'
if filereadable(s:plugin_javascript)
  execute 'source' s:plugin_javascript
endif

let s:plugin_json = 'plugins/languages/json'
if filereadable(s:plugin_json)
  execute 'source' s:plugin_json
endif

let s:plugin_jsx = 'plugins/languages/jsx'
if filereadable(s:plugin_jsx)
  execute 'source' s:plugin_jsx
endif

let s:plugin_coffee = 'plugins/languages/coffee'
if filereadable(s:plugin_coffee)
  execute 'source' s:plugin_coffee
endif

let s:plugin_typescript = 'plugins/languages/typescript'
if filereadable(s:plugin_typescript)
  execute 'source' s:plugin_typescript
endif

let s:plugin_elm = 'plugins/languages/elm'
if filereadable(s:plugin_elm)
  execute 'source' s:plugin_elm
endif

"*****************************************************************************

" Plug 'tpope/vim-surround'

" Lua | Ruby | Erlang | Elixir | MD 
" Rails | Rspec | Phoenix | Varant | Docker | Ansible 
" Upcase libs
"
" Snipets
" Autocompletion

call plug#end()
filetype plugin indent on
syntax on
