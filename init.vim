call plug#begin('~/.config/nvim/plugged')
    Plug 'arcticicestudio/nord-vim'
    " Plug 'mhartington/oceanic-next'
    " Plug 'othree/html5.vim'
    " Plug 'pangloss/vim-javascript'
    " Plug 'othree/yajs.vim'
    " Plug 'posva/vim-vue'
    " Plug 'leafOfTree/vim-vue-plugin'
    " Plug 'vim-python/python-syntax'
    " Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'dominikduda/vim_current_word'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'dense-analysis/ale'
    Plug 'christoomey/vim-tmux-runner'
    Plug 'diepm/vim-rest-console'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    " Plug 'jparise/vim-graphql'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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

" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext
colorscheme nord

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
set splitright
set splitbelow
"let &t_ZH="\e[3m"
"let &t_ZR="\e[23m"
set clipboard=unnamedplus

autocmd FileType make set noexpandtab

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F12> <Esc>:syntax sync fromstart<CR>

map q: <Nop>
nnoremap Q <nop>

map <Tab> :tabn <CR>
map <S-Tab> :tabp <CR>

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

let mapleader = ","

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

" vim-tmux-runner
let g:VtrUseVtrMaps = 1
let g:VtrStripLeadingWhitespace = 1
let g:VtrClearEmptyLines = 1

" vim-rest-console
let g:vrc_auto_format_response_enabled = 1

" git-gutter
set updatetime=100

" Defx
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_tree', 'toggle')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction

nnoremap <silent><leader>, :<C-u>Defx -listed -resume
      \ -columns=mark:indent:icon:filename:size:time
      \ -show-ignored-files
      \ -buffer-name=tab`tabpagenr()`
      \ `expand('%:p:h')` -search=`expand('%:p')`<CR>

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {}
    },
    indent = {
        enable = true,
        disable = {}
    },
    ensure_installed = "all"
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF
