return{
  "exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    vim.g.codeium_disable_binding = 1
    vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true, silent = true })
  end,
}

