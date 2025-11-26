return {
	"christoomey/vim-tmux-navigator",
	config = function()
		local keymap = vim.keymap.set
		local opts = { noremap = true, silent = true }

		opts.desc = "Tmux: move down"
		keymap("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", opts)

		opts.desc = "Tmux: move up"
		keymap("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", opts)

		opts.desc = "Tmux: move right"
		keymap("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", opts)

		opts.desc = "Tmux: move left"
		keymap("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", opts)
	end,
}
