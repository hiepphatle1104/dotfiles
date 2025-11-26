return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { { "mason-org/mason.nvim", opts = {} }, "neovim/nvim-lspconfig" },
    opts = {
      ensure_installed = {
        "lua_ls",
        "vtsls",
        "tailwindcss",
        "html",
        "cssls",
        "gopls",
        "jdtls",
        "pyright",
        "jsonls",
        "yamlls",
        "marksman",
        "bashls",
        "dockerls",
        "docker_compose_language_service",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "stylua",
        "prettier",
        "eslint",
        "stylelint",
        "golangci-lint",
        "goimports",
        "google-java-format",
        "checkstyle",
        "ruff",
        "yamllint",
        "jsonlint",
        "shellcheck",
      },
    },
  },
}
