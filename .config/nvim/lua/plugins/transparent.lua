return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      enable = true,
      -- extra_groups = {
      --   "Normal",
      --   "NormalNC",
      -- },
    })
    -- depends on pc, these settings are needed
    -- vim.cmd("highlight Normal guibg=NONE")
    -- vim.cmd("highlight NormalNC guibg=NONE")
    vim.cmd("highlight CursorLine guibg=NONE")
  end,
}
