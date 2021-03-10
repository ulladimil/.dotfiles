"set nocompatible
"filetype off

call plug#begin('~/.config/nvim/plugged')
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-colorscheme-switcher'
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mhartington/oceanic-next'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
"Plug 'othree/yajs.vim'
"Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'vim-python/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'dominikduda/vim_current_word'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
call plug#end()
"filetype plugin indent on

"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

if (has("termguicolors"))
    set termguicolors
endif

syntax on
filetype on
filetype plugin on
filetype plugin indent on

"syntax on
"colorscheme dracula 

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

set number
set cursorline

set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab 
"set smarttab
"set smartindent
set autoindent

"set showmatch
"set hlsearch
"set incsearch
set ignorecase
set smartcase

set nowrap
"set linebreak

set scrolloff=3
"set showcmd

set mouse=a
"set t_vb=
"set termencoding=utf-8
"set t_Co=256

"set showtabline=2

set nobackup
set noswapfile
set encoding=utf-8
"let &t_ZH="\e[3m"
"let &t_ZR="\e[23m"

set clipboard=unnamedplus

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

map q: <Nop>
nnoremap Q <nop>

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 0
hi CurrentWordTwins ctermbg=241
hi CurrentWordTwins guibg=#3a3a3a

let b:ale_linters = ['flake8', 'eslint', 'stylelint', 'vls']
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

cnoreabbrev E Explore
