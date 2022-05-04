runtime ./plug.vim

if (has("termguicolors"))
    set termguicolors
endif

syntax on
filetype on
filetype plugin on
filetype plugin indent on

set background=dark
let g:everforest_background='hard'
let g:everforest_better_performance=1
colorscheme everforest

set number
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab 
set autoindent
set ignorecase
set smartcase
set nowrap
set scrolloff=1
set mouse=a
set nobackup
set noswapfile
set encoding=utf-8
set splitright
set splitbelow
set clipboard=unnamedplus

autocmd FileType make set noexpandtab

runtime ./maps.vim

let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 0
"hi CurrentWordTwins ctermbg=241
hi CurrentWordTwins guibg=#485660

set signcolumn=yes

" vim-tmux-runner
let g:VtrUseVtrMaps = 1
let g:VtrStripLeadingWhitespace = 1
let g:VtrClearEmptyLines = 1

" vim-rest-console
let g:vrc_auto_format_response_enabled = 1

" git-gutter
set updatetime=100
