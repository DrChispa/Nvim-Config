return{
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    --Import Mason
    local mason = require("mason")
    --Import Mason Lsp Config
    local mason_lspconfig = require("mason-lspconfig")
    --Import Mason Tool Installer
    local mason_tool_installer = require("mason-tool-installer")

    --Enable Mason Icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        }
      }
    })
    --Enable Mason Lsp
    mason_lspconfig.setup({
      ensure_installed = {
        --lua
        "lua_ls",
        --Programming
        "eslint",
        "tsserver",
        "html",
        "cssls",
        "jsonls",
        "tailwindcss",
        --System
        "bashls",
        "pyright",
        "rust_analyzer",

      },
      --Auto Install Tools
      automatic_installation = true,
    })

    --Enable Mason Tools
    mason_tool_installer.setup({
      ensure_installed = {
        "eslint_d",
        "prettier",
        "stylua",
        "shellcheck",
        "shfmt",
        "eslint",
        "black",
        "pyright",
        "rustfmt",
        "rust_analyzer",
        "lua-language-server",
        "css-lsp",
        "html-lsp",
        "json-lsp",
        "markdownlint",

      }
    })
  end
}
