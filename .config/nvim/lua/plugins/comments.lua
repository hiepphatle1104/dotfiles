return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup({
				highlight = {
					before = "fg",
					keyword = "fg",
				},
			})

			vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { noremap = true, silent = true })
		end,
	},
}
