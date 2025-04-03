local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>", opts)
map("n", "<C-k>", "<cmd> TmuxNavigateUp<cr>", opts)
map("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>", opts)
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<cr>", opts)

map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)
map("i", "<C-h>", "<Left>", opts)

map("v", "J", ":move '>+1<CR>gv=gv", opts)
map("v", "K", ":move '<-2<CR>gv=gv", opts)

map("n", "<Esc>", ":noh<cr>", opts)
map("v", "d", '"_d', opts)
map("x", "<leader>p", '"_dP', opts)
map("n", "d", '"_d', opts)
map("n", "<leader><leader>", "<C-^>", { desc = "Switch to prev buffer" }, opts)
