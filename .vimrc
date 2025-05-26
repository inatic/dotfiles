set encoding=utf8
 
"""" START Vundle Configuration 
 
" Disable file type for vundle
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" Utility
Plugin 'scrooloose/nerdtree'

" Syntax
"Plugin 'vim-syntastic/syntastic'
Plugin 'StanAngeloff/php.vim'
Plugin 'stephpy/vim-php-cs-fixer'

" Autocompletion
Plugin 'phpactor/phpactor'

" Outline
Plugin 'majutsushi/tagbar'

" Vdebug
" install vim-nox package on Debian/Ubuntu
Plugin 'vim-vdebug/vdebug'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 


"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set nowrap

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
"set cursorline

" Set Ctags file
set tags=tags;

" Vdebug options
let g:vdebug_options = {
  \ 'port' : 9003,
  \ 'timeout' : 20,
  \ 'server' : '',
  \ 'on_close' : 'stop',
  \ 'break_on_open' : 1,
  \ 'ide_key' : '',
  \ 'debug_window_level' : 0,
  \ 'debug_file_level' : 0,
  \ 'debug_file' : '',
  \ 'path_maps' : {},
  \ 'watch_window_style' : 'expanded',
  \ 'marker_default' : '⬦',
  \ 'marker_closed_tree' : '▸',
  \ 'marker_open_tree' : '▾',
  \ 'sign_breakpoint' : '▷',
  \ 'sign_current' : '▶',
  \ 'continuous_mode'  : 1,
  \ 'simplified_status': 1,
  \ 'layout': 'vertical',
\}

"""""""""""""""""""""""""""""""""""""
" Mappings configuration
"""""""""""""""""""""""""""""""""""""
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
