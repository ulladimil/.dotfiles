return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local lspconfig = require("lspconfig")
    local util = lspconfig.util

    local function find_local_prettier()
      local paths = {
        "node_modules/.bin/prettier",
        "client/node_modules/.bin/prettier"
      }
      for _, path in ipairs(paths) do
        if util.path.exists(path) then
          return path
        end
      end
      return "prettier"
    end

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.prettier.with({
          command = find_local_prettier()
          -- prefer_local = "node_modules/.bin"
        }),
      }
    })
    vim.keymap.set('n', '<leader>fo', vim.lsp.buf.format, {})
  end
}
