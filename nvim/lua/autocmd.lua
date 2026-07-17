-- Treesitter highlighting
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function(event)
    if vim.treesitter.highlighter.active[event.buf] then
      return
    end

    local lang = vim.treesitter.language.get_lang(event.match)

    if lang and vim.treesitter.language.add(lang) then
      vim.treesitter.start(event.buf, lang)
    end
  end
})
