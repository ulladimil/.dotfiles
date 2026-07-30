vim.keymap.set("n", "<leader>,", "<CMD>Oil<CR>")

-- LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})

vim.keymap.set({ 'n', 'v' }, '<leader>fo', function()
  require('conform').format({
    async = true,
    lsp_format = 'fallback'
  })
end, { desc = 'Format file or selection' })

-- FZF
local fzf = require("fzf-lua")
vim.keymap.set("n", ";f", fzf.files)
vim.keymap.set("n", ";g", fzf.live_grep)
vim.keymap.set("n", ";;", fzf.resume)
vim.keymap.set("n", ";b", fzf.buffers)
vim.keymap.set("n", ";r", fzf.lsp_references)
vim.keymap.set("n", ";s", fzf.git_status)


-- Comments
local comment = require("Comment.api")
local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)

vim.keymap.set("n", "<leader>/", comment.call("toggle.linewise.current", "g@$"), { expr = true })

vim.keymap.set('x', '<leader>/', function()
  vim.api.nvim_feedkeys(esc, 'nx', false)
  comment.toggle.linewise(vim.fn.visualmode())
end)


-- Tabs
vim.keymap.set('n', '<Tab>', '<CMD>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<CMD>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<leader>co', '<CMD>BufferLineCloseOthers<CR>', {})
vim.keymap.set('n', '=', '<CMD>tabm +1<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '-', '<CMD>tabm -1<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ';t', '<CMD>tabe<CR>', { noremap = true, silent = true })

-- Window navigation
vim.keymap.set('n', '<Up>', "<C-w><C-k>", { noremap = true, silent = true})
vim.keymap.set('n', '<Down>', "<C-w><C-j>", { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<C-w><C-l>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', '<C-w><C-h>', { noremap = true, silent = true })


-- GIT
local gitsigns = require('gitsigns')

vim.keymap.set('n', '<leader>gb', gitsigns.blame, {})
vim.keymap.set('n', '<leader>gl', gitsigns.blame_line, {})
vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, {})

vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk, {})
vim.keymap.set('v', '<leader>hs', function()
  gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
end, {})
vim.keymap.set('n', '<leader>hS', gitsigns.stage_buffer, {})

vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, {})
vim.keymap.set('v', '<leader>hr', function()
  gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
end, {})
vim.keymap.set('n', '<leader>hR', gitsigns.reset_buffer_index, {})

-- Quickfix
vim.api.nvim_set_keymap('n', '<M-j>', '<CMD>cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', '<CMD>cprev<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<M-o>', function()
  local quickfix = require('custom.quickfix')
  quickfix.toggle()
end, { desc = 'Toggle Quickfix' })


-- Local plugins
vim.keymap.set("n", "gy", function()
  local file_path = require('custom.file_path')
  file_path.copy()
end, {noremap = true, silent = true})
