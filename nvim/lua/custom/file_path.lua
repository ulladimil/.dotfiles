local M = {}

M.copy = function()
  local abs_path = vim.fn.expand('%:p')
  if abs_path == "" then
    print('No file path to copy')
    return
  end
  local path = vim.fn.fnamemodify(abs_path, ':.')
  vim.fn.setreg('+', path)
  print('Copied: ' .. path)
end

return M
