return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function() 
    require("catppuccin").setup({
      transparent_background = true,
      show_end_of_buffer = true,
      integrations = {
        fidget = true,
      },
    })
  end
}
