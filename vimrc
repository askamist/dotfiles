set encoding=UTF-8
set backupdir=.backup/,~/.vim/backup/,/tmp//
set directory=.swp/,~/.vim/swp/,/tmp//
set undodir=.undo/,~/.vim/undo/,/tmp//
colorscheme default
set background=dark


set nu
set rnu

" by default, the indent is 2 spaces.
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent

set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\
set list

" Required by plugins like nerdcommenter
filetype plugin indent on

" Install Plug unless it is already installed, makes this rc indipendent of
" Plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plug-gable Area
call plug#begin()

Plug 'preservim/nerdcommenter'

" Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'

" Multiple commands
" Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

" The FzF
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'

Plug 'cocopon/iceberg.vim'
Plug 'gkeep/iceberg-dark'

call plug#end()

try
 colorscheme iceberg
catch
endtry  

let mapleader = ","
let g:mapleader = ","

" Nerd Commenter
" auto add spaces after comments
let g:NERDSpaceDelims = 1


" Airline
let g:airline_theme='icebergDark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

