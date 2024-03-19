return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre" , "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local nvim_treesitter = require("nvim-treesitter.configs")

    nvim_treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "bash",
        "astro",
        "html",
        "css",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "typescript",
        "tsx",
        "yaml",
        "vim",
        "dockerfile",
        "gitignore",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
    require("ts_context_commentstring").setup()
  end,
}
