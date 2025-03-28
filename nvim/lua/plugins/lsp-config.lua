return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "ts_ls", "cssls", "tailwindcss"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, {})
      -- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})

      local lspconfig = require("lspconfig")
      -- local util = require("lspconfig/util")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
      vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

      local border = {
        {"╭", "FloatBorder"},
        { "─", "FloatBorder"},
        { "╮", "FloatBorder"},
        { "│", "FloatBorder"},
        { "╯", "FloatBorder"},
        { "─", "FloatBorder"},
        { "╰", "FloatBorder"},
        { "│", "FloatBorder"},
      }

      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or border
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.pyright.setup({
        capabilities = capabilities,
        -- root_dir = function(fname)
        --   return util.root_pattern('.venv', 'venv')(fname) or
        --     util.path.dirname(fname)
        -- end,
        settings = {
          python = {
            -- pythonPath = ".venv/bin/python",
            analysis = {
              typeCheckingMode = "off"
            }
          }
        }
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })
    end
  }
}
