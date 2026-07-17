-- Отображение текста и интерфейс
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 6
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "119"
vim.opt.guicursor = "i:block"

-- Настройки табов и отступов
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.g.editorconfig = true

-- Разделение окон
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Системный буфер обмена
vim.opt.clipboard = "unnamedplus"

-- Поиск
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Системные настройки и бэкапы
vim.opt.updatetime = 100
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true

-- Ввод текста и клавиатура (Input & Keyboard)
vim.opt.iminsert = 0
vim.opt.imsearch = 0
vim.opt.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

vim.g.mapleader = ","

require('config')
require('autocmd')
require('keymap')
