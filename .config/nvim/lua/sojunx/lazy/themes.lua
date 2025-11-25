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
                    GitSignsCurrentLineBlame = { fg = "#8b8d9f" }
                }
      end
    })
  end
}
