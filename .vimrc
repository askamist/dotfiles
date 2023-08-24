set encoding=UTF-8

set nu

" by default, the indent is 2 spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2

call plug#begin()

Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-rails'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'

call plug#end()
