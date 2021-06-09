source $XDG_CONFIG_HOME/nvim/vim-plug/plugins.vim
source $XDG_CONFIG_HOME/nvim/plug-config/coc.vim


" Tweaks
set encoding=utf-8
set number                  " Enable line numbers.
set showmode                " Show the current mode.
set showcmd                 " show partial command on last line of screen.
set showmatch               " show matching parenthesis
set splitbelow splitright   " how to split new windows.
set expandtab
set smartindent
set nomodeline
set nowrap
set formatoptions=qrn1
set autoindent smartindent
set incsearch
set clipboard^=unnamed,unnamedplus

syntax on
let g:airline_theme='atomic'

highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none

" nerdtree
let NERDTreeShowHidden=1

"Shortcut sex
let mapleader = " "

nnoremap <leader>w :NERDTreeToggle<CR>
