" allow syntax highlighting
syntax on

" set clipboard=unnamed

set tabstop=4 shiftwidth=4 expandtab

set number
map <C-n> :NERDTreeToggle<CR>
set nocompatible              " be iMproved, required
filetype off                  " required
vnoremap <C-c> "*y:q
set mouse=a
set t_ts=^[]1;
set t_fs=^G

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'call
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
" -- note that YCM needs compilation on local system.  See repo for info.
"Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'

" powerline -- deactivated in favor of vim-airline
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" powerline for vim
Plugin 'bling/vim-airline'

" for tree browsing in vim
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Vim support for arduino compilation
Plugin 'tclem/vim-arduino'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'

" scripts not on GitHub, examples:
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Vundle Vim Package Manager quick tips:
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install (update) bundles
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

set backspace=indent,eol,start

autocmd FileType ino setlocal sw=2 sts=2 et

py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" give vim-airline access to powerline symbols
let g:airline_powerline_fonts = 1

