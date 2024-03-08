return {
      "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      local cmd = vim.cmd
      local status, _ = pcall(cmd, "colorscheme nightfly")
      if not status then
        print("Colorscheme not found!") -- print error if colorscheme not installed
        return
      end
    end,
  }
