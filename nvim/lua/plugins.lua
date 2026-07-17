return {
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      {
        "malewicz1337/oil-git.nvim",
        opts = {
          show_file_highlights = true,
          show_directory_highlights = false,
          show_file_symbols = false,
          show_directory_symbols = false,
        },
      },
    },
    lazy = false,
    config = function()
      require("oil").setup({
        default_file_explorer = true,
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        keymaps = {
          ["l"] = "actions.select",
          ["t"] = { "actions.select", opts = { tab = true } },
          ["h"] = "actions.parent",
          ["z"] = "actions.open_cwd",
          ["gy"] = { "actions.yank_entry", opts = { modify = ":." } }
        },
        view_options = {
          show_hidden = true,
          is_always_hidden = function(name)
            if name == "__pycache__" then
              return true
            end
            if name == ".DS_Store" then
              return true
            end
          end
        }
      })
    end
  },

  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    'nvim-lspconfig',
    config = function()
      vim.lsp.enable({
        'lua_ls',
        'pyright',
        'ts_ls',
        'tailwindcss'
      })
    end
  },

  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require('conform').setup({
        formatters_by_ft = {
          python = { 'isort' },
        },
      })
    end
  },

  {
    'saghen/blink.cmp',
    dependencies = {
      'saghen/blink.lib',
      'rafamadriz/friendly-snippets',
    },
    build = function()
      require('blink.cmp').build():pwait()
    end,

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'enter' },
      completion = { documentation = { auto_show = true } },
      sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
      fuzzy = { implementation = "rust" }
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  },

  {
    "ibhagwan/fzf-lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    ---@module "fzf-lua"
    ---@type fzf-lua.Config|{}
    ---@diagnostic disable: missing-fields
    opts = {
      winopts = {
        width = 0.95
      },
      files = {
        cwd_prompt = false,
      },
      grep = {
       rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --fixed-strings -e",
      },
    },
    ---@diagnostic enable: missing-fields
  },

  {
    "tzachar/local-highlight.nvim",
    opts = {},
    config = function()
      require("local-highlight").setup({
        animate = {
          enabled = false
        }
      })
    end
  },

  {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      require('Comment').setup({
        mappings = {
          basic = false,
          extra = false
        }
      })
    end
  },

  {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup{
        options = {
          mode = "tabs",
          diagnostics = "nvim_lsp"
        }
      }
    end
  },

  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup {
        install_dir = vim.fn.stdpath('data') .. '/site'
      }
    end
  },

  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require("ibl").setup({
        scope = {
          enabled = false
        }
      })
    end
  },
}
