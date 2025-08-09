return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		triggers = {
			{ "<auto>", mode = "nixsotc" },
		},
	},
	keys = {
		{
			"<leader>ch",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Local Keymaps (which-key)",
		},
	},
}

