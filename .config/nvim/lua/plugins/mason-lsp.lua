return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = {
        "html",
        "cssls",
        "dockerls",
        "clangd",
        "ts_ls",
        "tailwindcss",
        "pyright",
        "jdtls",
        "groovyls",
        "gopls",
        "gradle_ls",
      },
    }
  end,
}
