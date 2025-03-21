-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- Must press 'q' to exit | Do not use ':q' command
vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    local crbuf = vim.api.nvim_get_current_buf()
    vim.cmd("wincmd c")
    vim.api.nvim_open_win(crbuf, true, {
      relative = "editor",
      width = math.floor(vim.o.columns * 0.8),
      height = math.floor(vim.o.lines * 0.8),
      col = math.floor(vim.o.columns * 0.1),
      row = math.floor(vim.o.lines * 0.1),
      border = "rounded",
    })
  end,
})
