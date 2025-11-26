return {
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { { "mason-org/mason.nvim", opts = {} }, "neovim/nvim-lspconfig" },
		opts = {
			ensure_installed = {
				"lua_ls",
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = { "stylua" },
		},
	},
}
