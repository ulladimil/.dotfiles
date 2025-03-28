return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    -- "famiu/bufdelete.nvim"
  },
  config = function()
    require("bufferline").setup{
      options = {
        mode = "tabs",
        -- offsets = {
        --   {
        --     filetype = "neo-tree",
        --     text="File Explorer",
        --     separator= true,
        --     text_align = "left",
        --   }
        -- },
        -- close_command = require("bufdelete").bufdelete,
        diagnostics = "nvim_lsp"
      }
    }
    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {})
    -- vim.keymap.set('n', '=', ':BufferLineMoveNext<CR>', {})
    -- vim.keymap.set('n', '-', ':BufferLineMovePrev<CR>', {})
    vim.keymap.set('n', '<leader>co', ':BufferLineCloseOthers<CR>', {})
    vim.keymap.set('n', '<leader>cr', ':BufferLineCloseRight<CR>', {})
    vim.keymap.set('n', '<leader>cp', ':BufferLinePickClose<CR>', {})
  end
}
