return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				--Mouse commands
				numbers = "none",
				right_mouse_command = "Bdelete! %d",
				left_mouse_command = "buffer %d",
				middle_mouse_command = nil,

				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						padding = 1,
					},
				},
				-- Show
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				persist_buffer_sort = true,
				enforce_regular_tabs = true,
				always_show_bufferline = true,
				-- Opts
				max_name_length = 14,
				max_prefix_length = 13,
				tab_size = 20,
				separator_style = "thin",
				diagnostics = "nvim_lsp",
			},
		})
	end,
}
