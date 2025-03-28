return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      keymaps = {
        ["l"] = "actions.select",
        ["t"] = { "actions.select", opts = { tab = true } },
        ["h"] = "actions.parent",
        ["z"] = "actions.open_cwd"
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
    vim.keymap.set("n", "<leader>,", "<CMD>Oil<CR>")
  end
}
