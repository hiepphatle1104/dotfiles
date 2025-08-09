return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      renderer = { root_folder_label = false },
      diagnostics = {
        enable = true,
        icons = {
          error = "✘",
          warning = "",
          hint = "",
          info = "",
        },
      },
      filters = {
        dotfiles = true,
        custom = {
          "^\\.git$",
          "^node_modules$",
        },
        exclude = {
          ".gitignore",
        },
      },
    })
  end,
}
