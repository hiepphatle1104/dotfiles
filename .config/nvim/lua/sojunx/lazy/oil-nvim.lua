return {
  'stevearc/oil.nvim',
  dependencies = { { "nvim-mini/mini.icons", opts = { style = "glyphs" } } },
  lazy = false,
  config = function() 
    require("oil").setup({
      float = {
				-- Padding around the floating window
				padding = 2,
				max_width = 90,
				max_height = 0,
				border = "rounded",
				win_options = {
					winblend = 0,
				},
			},
      view_options = { show_hidden = true },
      keymaps = {
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<CR>"] = "actions.select",
        ["<C-s>"] = { "actions.select", opts = { vertical = true } },
        ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
        ["<C-t>"] = { "actions.select", opts = { tab = true } },
        -- ["<C-p>"] = "actions.preview",
        ["<C-p>"] = { { "actions.preview", opts = { vertical = true, split = "rightbelow" } } },
        ["<C-c>"] = { "actions.close", mode = "n" },
        ["<C-l>"] = "actions.refresh",
        ["-"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        ["gs"] = { "actions.change_sort", mode = "n" },
        ["gx"] = "actions.open_external",
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["g\\"] = { "actions.toggle_trash", mode = "n" },
      },
      use_default_keymaps = false,
    })
    vim.keymap.set('n', '<leader>e', require('oil').open, { desc = "Open parent directory" })
  end
}
