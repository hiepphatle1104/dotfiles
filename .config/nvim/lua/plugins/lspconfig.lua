local servers = {
	"lua_ls",
	"dockerls",
	"golangci_lint_ls",
	"gopls",
	"jdtls",
	"ts_ls",
	"biome",
	"jsonls",
	"pyright",
	"yamlls",
}

return {
	{
		"mfussenegger/nvim-jdtls",
	},

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},

	{

		"williamboman/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig", "hrsh7th/nvim-cmp", "williamboman/mason.nvim" },
		config = function()
			local lspconfig = require("lspconfig")
			local masonlsp = require("mason-lspconfig")

			masonlsp.setup({
				ensure_installed = servers,
				automatic_installation = true,
			})

			local on_attach = function(_, bufnr)
				local opts = { noremap = true, silent = true, buffer = bufnr }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
				vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
				vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
			end

			masonlsp.setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						on_attach = on_attach,
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
					})
				end,
			})
		end,
	},
}
