set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'mhartington/oceanic-next'
Plug 'othree/html5.vim'
"Plug 'othree/yajs.vim'
"Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'vim-python/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'

call plug#end()
filetype plugin indent on

syntax on
"colorscheme dracula 
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext

set number
set cursorline

set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab 
"set smarttab
"set smartindent
set autoindent

set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

set wrap 
set linebreak

set scrolloff=3
set showcmd

set mouse=a
set t_vb=
set termencoding=utf-8
set t_Co=256

set showtabline=2

"set nobackup
"set noswapfile
set encoding=utf-8
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

set clipboard=unnamedplus

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

