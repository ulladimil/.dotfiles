return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require('lspsaga').setup({
      finder = {
        layout = 'float',
        max_height = 0.9
      },
      symbol_in_winbar = {
        enable = false
      },
      lightbulb = {
        enable = false
      },
      rename = {
        in_select = true
      }
    })
    -- vim.keymap.set('n', '<leader>gr', "<cmd>Lspsaga finder<CR>", {silent = true, noremap = true})
    vim.keymap.set('n', '<leader>rn', "<cmd>Lspsaga rename<CR>", {silent = true, noremap = true})
  end
}

