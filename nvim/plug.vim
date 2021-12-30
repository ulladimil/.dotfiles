call plug#begin('~/.config/nvim/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'dominikduda/vim_current_word'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'christoomey/vim-tmux-runner'
    Plug 'diepm/vim-rest-console'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'kristijanhusak/defx-icons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown' }
call plug#end()

" For LSP
" npm install -g pyright vls vscode-langservers-extracted typescript typescript-language-server
" pip install django-types
