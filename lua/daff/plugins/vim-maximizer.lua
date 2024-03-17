return {
  "szw/vim-maximizer",
  config = function()
    vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Toggle Maximizer" })
  end,
}
