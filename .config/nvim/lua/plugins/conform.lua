return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black", "isort" },
				javascript = { "prettierd", "prettier", "biome", stop_after_first = true },
				go = { "golangci-lint", "gofmt", stop_after_first = true },
				java = {},
				json = { "jq" },

				["*"] = { "codespell" },
				["_"] = { "trim_whitespace" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>fm", function()
			conform.format({ async = true, lsp_fallback = true })
		end, { desc = "Format code" })
	end,
}
