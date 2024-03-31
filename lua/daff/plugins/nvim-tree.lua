return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
		vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

		-- configure nvim-tree
		nvimtree.setup({
			-- Setup
			disable_netrw = true,
			hijack_cursor = true,
			hijack_netrw = true,
			hijack_unnamed_buffer_when_opening = false,
			sync_root_with_cwd = true,
			open_on_tab = true,
			update_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = false,
			},
			--Diagnostics
			diagnostics = {
				enable = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			-- View Configs
			view = {
				adaptive_size = false,
				side = "left",
				width = 30,
				preserve_window_proportions = false,
				number = false,
				signcolumn = "yes",
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				-- Icons
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = false,
					},
					glyphs = {
						default = "󰈚",
						symlink = "",
						folder = {
							default = "",
							empty = "",
							empty_open = "",
							open = "",
							symlink = "",
							symlink_open = "",
							arrow_open = "",
							arrow_closed = "",
						},
						git = {
							unstaged = "✗",
							staged = "✓",
							unmerged = "",
							renamed = "➜",
							untracked = "★",
							deleted = "",
							ignored = "◌",
						},
					},
				},
			},
			--Git Options
			git = {
				ignore = false,
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					resize_window = true,
					-- window_picker = {
					-- enable = false,
					-- },
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		--tree focus
		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" })
		keymap.set("n", "<leader>ee", "<cmd>NvimTreeOpen<CR>", { desc = "Open the exploerer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>en",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
