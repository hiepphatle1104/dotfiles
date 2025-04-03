-- Setup lazy nvim
require("core.lazy-nvim")

-- Load options
require("core.options")

-- Load keymaps
require("core.mappings")

-- Load autocmds
require("core.autocmds")

-- Load lsp config
require("core.lsp")

-- Load plugins
require("lazy").setup("plugins")
