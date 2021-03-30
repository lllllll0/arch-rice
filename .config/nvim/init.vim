source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim


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

syntax on
colorscheme angr
let g:airline_theme='angr'

highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none

"Shortcut sex
let mapleader = " "

nnoremap <leader>w :NERDTreeToggle<CR>
