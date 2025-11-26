return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"bash",
				"css",
				"csv",
				"editorconfig",
				"go",
				"http",
				"java",
				"javadoc",
				"json",
				"make",
				"nix",
				"yaml",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"html",
				"python",
				"typescript",
				"dockerfile",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

