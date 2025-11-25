return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function() 
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      custom_highlights = function()
        return {
          -- NeoTreeMessage = { fg = "#5b6078" },
          -- GitSignsCurrentLineBlame = { fg = "#585b70" },
          -- BlinkCmpDoc = { bg = "#1e1e2e" },
          -- BlinkCmpDocBorder = { bg = "#1e1e2e" },
        }
      end,
    })
  end
}
