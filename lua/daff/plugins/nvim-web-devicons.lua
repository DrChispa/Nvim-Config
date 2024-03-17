return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      astro = { icon = "󰑣", color = "#EF8547", name = "astro" },
    })
  end,
}
