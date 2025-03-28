require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map('n', "<C-h>","<cmd> TmuxNavigateLeft<cr>" )
map('n', "<C-j>","<cmd> TmuxNavigateDown<cr>" )
map('n', "<C-k>","<cmd> TmuxNavigateUp<cr>" )
map('n', "<C-l>","<cmd> TmuxNavigateRight<cr>" )
map("v", "J", ":move '>+1<CR>gv=gv")
map("v", "K", ":move '<-2<CR>gv=gv")
map('v', 'd', '"_d')
map('x', '<leader>p', '"_dP')
map('n', 'd', '"_d')

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- disable mappings
local nomap = vim.keymap.del

nomap('n', '<A-h>')
nomap("n", "<C-n>")
