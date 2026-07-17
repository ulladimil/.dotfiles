-- Treesitter highlighting
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function(event)
    if vim.treesitter.highlighter.active[event.buf] then
      return
    end

    local parser = vim.treesitter.get_parser(event.buf)
    if parser then
      vim.treesitter.start(event.buf)
    end
  end
})
