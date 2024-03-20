return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						padding = 1,
					},
				},
				show_close_icon = false,
				mode = "tabs",
				max_name_length = 14,
				max_prefix_length = 13,
				tab_size = 20,
				show_tab_indicators = true,
				enforce_regular_tabs = false,
				view = "multiwindow",
				show_buffer_close_icons = true,
				separator_style = "thin",
				always_show_bufferline = true,
				diagnostics = "nvim_lsp",
			},
		})
	end,
}
