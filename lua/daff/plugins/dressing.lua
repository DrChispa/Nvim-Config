return {
  "stevearc/dressing.nvim",
  init = function()
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.select = function(...)
      require("Lazy").load({ plugin = { "dressing.nvim" } })
        return vim.ui.select(...)
    end
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.input = function(...)
      require("Lazy").load({ plugin = { "dressing.nvim" } })
        return vim.ui.input(...)
    end
  end,
}
