  return {
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    },
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.8",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("telescope").setup({
          defaults = {
            layout_strategy = 'vertical',
            sorting_strategy = 'ascending',
            layout_config = {
              height = 0.95,
              vertical = {
                preview_cutoff = 0
              }
            }
          },
          extensions = {
            fzf = {
              fuzzy = true,                    -- false will only do exact matching
              override_generic_sorter = true,  -- override the generic sorter
              override_file_sorter = true,     -- override the file sorter
              case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            }
          }
        })
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', ';f', builtin.find_files, {})
        vim.keymap.set('n', ';;', builtin.resume, {})
        vim.keymap.set('n', ';b', builtin.buffers, {})
        -- vim.keymap.set('n', ';r', builtin.lsp_references, {})
        vim.keymap.set('n', ';g', builtin.live_grep, {})
        vim.keymap.set({'n', 'v'}, ';s', builtin.grep_string, {})
        vim.keymap.set('n', ';d', builtin.lsp_document_symbols, {})
        -- vim.keymap.set('n', ';g', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
        require('telescope').load_extension('fzf')
      end
    },
    {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
        require("telescope").setup {
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {}
            }
          }
        }
        require("telescope").load_extension("ui-select")
      end
    },
  }
