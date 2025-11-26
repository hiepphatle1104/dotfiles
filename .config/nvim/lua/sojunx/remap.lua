-- local which_key = require("which-key")
-- local non_lsp_mappings = {
--   ["<leader>"] = {
--     e = { vim.cmd.Ex, "Open file explorer" },
--     p = { "\"_dP", "Paste without overwrite" },
--     ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Toggle comment" },
--     s = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Search and replace word under cursor" },
--     t = { ":Today<CR>", "Open today's note" },
--   },
--   J = { "mzJ`z", "Join lines and keep cursor position" },
--   ["<C-d>"] = { "<C-d>zz", "Half page down and center" },
--   ["<C-u>"] = { "<C-u>zz", "Half page up and center" },
--   n = { "nzzzv", "Next search result and center" },
--   N = { "Nzzzv", "Previous search result and center" },
--   Q = { "<nop>", "Disable Ex mode" },
-- }

-- which_key.register(non_lsp_mappings)

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

opts.desc = "Move cursor down"
keymap("i", "<C-j>", "<Down>", opts)

opts.desc = "Move cursor up"
keymap("i", "<C-k>", "<Up>", opts)

opts.desc = "Move cursor right"
keymap("i", "<C-l>", "<Right>", opts)

opts.desc = "Move cursor left"
keymap("i", "<C-h>", "<Left>", opts)

opts.desc = "Clear search highlight"
keymap("n", "<Esc>", ":noh<cr>", opts)

opts.desc = "Delete without yanking (visual)"
keymap("v", "d", '"_d', opts)

-- opts.desc = "Paste without yanking"
-- keymap("x", "P", '"_dP', opts)

opts.desc = "Delete without yanking (normal)"
keymap("n", "d", '"_d', opts)

opts.desc = "Switch to prev buffer"
keymap("n", "<leader><leader>", "<C-^>", opts)

opts.desc = "Move selected block down"
keymap("v", "J", ":move '>+1<CR>gv=gv", opts)

opts.desc = "Move selected block up"
keymap("v", "K", ":move '<-2<CR>gv=gv", opts)

opts.desc = "Indent block"
keymap("v", ">", ">gv", opts)

opts.desc = "Unindent block"
keymap("v", "<", "<gv", opts)
