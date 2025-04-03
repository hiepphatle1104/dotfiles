return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-file-browser.nvim" },
	},
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "^.git/", "^node_modules/" },
			},
			extensions = {
				file_browser = {
					hidden = true,
				},
			},
		})

		-- Load extension
		telescope.load_extension("file_browser")

		vim.keymap.set(
			"n",
			"<leader>ff",
			"<cmd>Telescope find_files hidden=true<cr>",
			{ desc = "Telescope find files" },
			{ noremap = true, silent = true }
		)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", { noremap = true, silent = true })
	end,
}
