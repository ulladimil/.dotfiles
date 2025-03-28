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
"colorscheme everforest
colorscheme tokyonight-moon

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

let g:netrw_banner = 0

runtime ./maps.vim

let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 0
"hi CurrentWordTwins ctermbg=241
"hi CurrentWordTwins guibg=#485660
hi CurrentWordTwins guibg=#42486D

set signcolumn=yes

" vim-tmux-runner
let g:VtrUseVtrMaps = 1
let g:VtrStripLeadingWhitespace = 1
let g:VtrClearEmptyLines = 1

" vim-rest-console
let g:vrc_auto_format_response_enabled = 1

" git-gutter
set updatetime=100

lua << EOF
require("mason").setup()
EOF

lua << EOF
require("bufferline").setup{
    options = {
        mode = "tabs",
        always_show_bufferline = false
    }
}
EOF

" for nvim-tree
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

highlight NvimTreeGitDirty guifg=#d08770
highlight NvimTreeGitNew guifg=#a3be8c
highlight NvimTreeGitDeleted guifg=#bf616a
highlight NvimTreeGitStaged guifg=#b48ead
highlight NvimTreeGitMerge guifg=#ebcb8b
highlight NvimTreeGitRenamed guifg=#88c0d0
highlight NvimTreeGitIgnored guifg=#7c818c

lua << EOF
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {}
  },
  filters = {
    dotfiles = false,
    custom = { '__pycache__', '.DS_Store' }
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 1000
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = false
      }
    }
  }
})
EOF

nnoremap <leader>, :NvimTreeToggle<CR>

