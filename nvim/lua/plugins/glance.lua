return {
  'dnlhc/glance.nvim',
  config = function()
    require('glance').setup({
    })
    vim.keymap.set('n', '<leader>gr', "<cmd>Glance references<CR>")
  end
}
