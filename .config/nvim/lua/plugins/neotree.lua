return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		local neotree = require("neo-tree")
		local components = require("neo-tree.sources.common.components")

		neotree.setup({
			close_if_last_window = true,

			filesystem = {
				follow_current_file = { enabled = true },
				components = {
					name = function(config, node, state)
						local name = components.name(config, node, state)
						if node:get_depth() == 1 then
							local cwd = vim.loop.cwd() or ""
							local sep = package.config:sub(1, 1)
							local home = vim.loop.os_homedir() or ""
							local display = ""

							-- Hàm tách đường dẫn thành các folder
							local function split(path)
								local parts = {}
								for part in string.gmatch(path, "[^" .. sep .. "]+") do
									table.insert(parts, part)
								end
								return parts
							end

							-- Nếu cwd nằm trong home
							if cwd:sub(1, #home) == home then
								local rel = cwd:sub(#home + 1)
								if rel:sub(1, 1) == sep then
									rel = rel:sub(2)
								end
								local parts = split(rel)
								if #parts <= 2 then
									display = "~" .. (rel ~= "" and (sep .. rel) or "")
								else
									display = ".." .. sep .. parts[#parts - 1] .. sep .. parts[#parts]
								end
							else
								local parts = split(cwd)
								if #parts >= 2 then
									display = ".." .. sep .. parts[#parts - 1] .. sep .. parts[#parts]
								else
									display = cwd
								end
							end

							name.text = display
						end
						return name
					end,
				},

				filtered_items = {
					visible = false,
					hide_dotfiles = true,
					hide_gitignored = true,
					hide_hidden = true,
					hide_by_name = { "node_modules" },
					always_show = {
						".gitIgnored",
						".zshrc",
						".zshenv",
					},
					always_show_by_pattern = { ".env*" },
					never_show = {
						".git",
						".DS_Store",
						"thumbs.db",
					},
				},
				window = {
					mappings = {
						["<bs>"] = "",
						["."] = "",
						["/"] = "",
						["D"] = "",
						["#"] = "",
						["f"] = "",
						["<c-x>"] = "",
						["o"] = "",
						["oc"] = "",
						["od"] = "",
						["og"] = "",
						["om"] = "",
						["on"] = "",
						["os"] = "",
						["ot"] = "",
					},
				},
			},

			default_component_configs = {
				modified = { symbol = "" },
				git_status = {
					symbols = {
						-- Change type
						added = "✚",
						modified = "",
						deleted = "✖",
						renamed = "󰁕",
						-- Status type
						untracked = "",
						ignored = "",
						unstaged = "󰄱",
						staged = "",
						conflict = "",
					},
				},
			},

			window = {
				mapping_options = {
					noremap = true,
					nowait = true,
				},
				mappings = {
					["P"] = "",
					["l"] = "",
					["S"] = "",
					["s"] = "",
					["t"] = "",
					["w"] = "",
					["C"] = "",
					["b"] = "",
					["?"] = "",
					["<"] = "",
					[">"] = "",
					["i"] = "",
				},
			},

			buffers = {
				window = {
					mappings = {},
				},
			},
		})

		vim.keymap.set("n", "<leader>e", ":Neotree toggle reveal<CR>", { noremap = true, silent = true })
	end,
}
