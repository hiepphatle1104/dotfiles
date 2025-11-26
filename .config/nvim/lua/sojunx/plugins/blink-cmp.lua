return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		{ "nvim-mini/mini.icons", opts = { style = "glyphs" } },
		"onsails/lspkind.nvim",
		{
			"saghen/blink.compat",
			version = "*",
			lazy = true,
			opts = {},
		},
	},
	event = { "InsertEnter", "CmdlineEnter" },
	version = "1.*",
	opts = {
		keymap = { preset = "super-tab" },
		appearance = { nerd_font_variant = "mono" },

		completion = {
			menu = {
				border = "rounded",
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
					},

					components = {
						kind_icon = {
							text = function(ctx)
								local icon = ctx.kind_icon
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local dev_icon, _ = require("mini.icons").get_icon(ctx.label)
									if dev_icon then
										icon = dev_icon
									end
								else
									icon = require("lspkind").symbolic(ctx.kind, { mode = "symbol" })
								end
								return icon .. ctx.icon_gap
							end,
						},
					},
				},
			},

			documentation = {
				window = { border = "rounded" },
				auto_show = true,
				auto_show_delay_ms = 350,
			},
		},

		signature = { enabled = true },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		fuzzy = { implementation = "prefer_rust_with_warning" },

		-- windows = {
		--   autocomplete = { border = "rounded" },
		--   documentation = { border = "rounded" },
		--   signature = { border = "rounded" },
		-- },
	},
	opts_extend = { "sources.default" },
}
