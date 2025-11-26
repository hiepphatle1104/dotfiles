return {
  "nvim-lualine/lualine.nvim",
  dependencies = { { "nvim-mini/mini.icons", opts = { style = "glyphs" } } },
  config = function()
    require("lualine").setup({
      options = {
        component_separators = { left = "", right = "" },
        -- section_separators = { left = "", right = "" },
        always_show_tabline = false,
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename", "diff", "diagnostics" },
        lualine_x = { "encoding" },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
      },
    })
  end,
}
