local M = {}

M.toggle = function()
  local current_win = vim.api.nvim_get_current_win()

  -- Проверяем, открыт ли Quickfix в любом табе (через `getqflist({winid = 0})`)
  local qf_winid = vim.fn.getqflist({ winid = 0 }).winid

  if qf_winid ~= 0 then  -- если Quickfix открыт где-то
    vim.cmd("cclose")
    if vim.api.nvim_win_is_valid(current_win) then
      vim.api.nvim_set_current_win(current_win)  -- Возвращаем фокус
    end
  else
    if not vim.tbl_isempty(vim.fn.getqflist()) then
      vim.cmd("botright copen")
      if vim.api.nvim_win_is_valid(current_win) then
        vim.api.nvim_set_current_win(current_win)  -- Возвращаем фокус
      end
    else
      vim.notify("Quickfix list is empty!", vim.log.levels.WARN)
    end
  end
end

return M
