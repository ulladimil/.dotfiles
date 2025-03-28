vim.cmd("set number")
vim.cmd("set cursorline")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set splitright")
vim.cmd("set splitbelow")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set nowrap")
vim.cmd("set updatetime=100")
vim.cmd("set termguicolors")
vim.cmd("set autoindent")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set nobackup")
vim.cmd("set noswapfile")
vim.cmd("set scrolloff=6")
vim.cmd("set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz")
vim.cmd("set keymap=russian-jcukenwin")
vim.cmd("set iminsert=0")
vim.cmd("set imsearch=0")

vim.g.mapleader = ","
vim.g.editorconfig = true
vim.opt.signcolumn = "yes"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  checker = { enabled = false },
})

-- Keymap
vim.api.nvim_set_keymap("n", "<Up>", "<C-U>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Down>", "<C-D>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Right>", "<C-W><C-L>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Left>", "<C-W><C-H>", { noremap = true })
vim.api.nvim_set_keymap("n", "=", ":tabm +1<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "-", ":tabm -1<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", ";t", ":tabe<CR>", { noremap = true })
