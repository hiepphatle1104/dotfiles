return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			transparent_background = true,
			custom_highlights = function(colors)
				return {
					NeoTreeMessage = { fg = "#5b6078" },
					GitSignsCurrentLineBlame = { fg = "#5b6078" },
				}
			end,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
