"*****************************************************************************
""" Loading vim rc and plugins settings
"*****************************************************************************

function! s:LoadConfigFilesFrom(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

let mapleader = ","

filetype off

set rtp+=~/.vim/bundles/vundle/
call vundle#rc("~/.vim/bundles/")

call s:LoadConfigFilesFrom('plugins')

filetype plugin indent on
syntax on

call s:LoadConfigFilesFrom('rcs')
