return {
  "rmagatti/auto-session",
  lazy = false,
  keys = {
    { "<leader>wr", "<cmd>AutoSession search<CR>", desc = "Session search" },
  },

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { "~/", "~/projects", "~/Downloads", "/" },
    auto_restore = false,
    -- log_level = 'debug',
  },
}
