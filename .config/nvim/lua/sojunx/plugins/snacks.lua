return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  config = function()
    local snacks = require("snacks")
    snacks.setup({
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = {
        formatters = {
          file = { filename_first = true },
        },
        matcher = { frecency = true },
        sources = {
          files = {
            hidden = true,
            layout = { preset = "default" },
          },

          lines = {
            layout = { preset = "select" },
          },

          git_branches = {
            layout = { preset = "vscode" },
          },
        },
        exclude = {
          "node_modules",
          ".git",
          "*.lock",
        },
      },
      quickfile = { enabled = true },
      scope = { enabled = true },
      lazygit = {},
      git = { enabled = true },
    })

    local opts = { noremap = true, silent = true }
    local function keymap(lhs, rhs, options)
      vim.keymap.set("n", lhs, rhs, options)
    end

    -- Find
    opts.desc = "Find Files"
    keymap("<leader>ff", snacks.picker.files, opts)

    opts.desc = "Find Config File"
    keymap("<leader>fc", function()
      snacks.picker.files({ cwd = vim.fn.stdpath("config") })
    end, opts)

    opts.desc = "Recents"
    keymap("<leader>fr", snacks.picker.recent, opts)

    -- Search
    opts.desc = "Search"
    keymap("<leader>sg", snacks.picker.grep, opts)

    opts.desc = "Search Lines"
    keymap("<leader>sb", snacks.picker.lines, opts)

    opts.desc = "Search Diagnostics"
    keymap("<leader>sd", snacks.picker.diagnostics, opts)

    opts.desc = "Help Pages"
    keymap("<leader>sh", snacks.picker.help, opts)

    -- Git
    opts.desc = "Git Branches"
    keymap("<leader>gb", snacks.picker.git_branches, opts)

    opts.desc = "Git Log"
    keymap("<leader>gl", snacks.picker.git_log, opts)

    opts.desc = "Git Status"
    keymap("<leader>gs", snacks.picker.git_status, opts)

    opts.desc = "LazyGit"
    keymap("<leader>gg", function()
      snacks.lazygit()
    end, opts)
  end,
}
