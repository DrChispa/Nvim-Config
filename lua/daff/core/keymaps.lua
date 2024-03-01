-- Set Leader
vim.g.mapleader = " "

-- Local Keymap
local keymap = vim.keymap

-- jk To Escape
keymap.set("i", "jk", "<ESC>", { desc = "Escape to normal mode" })

-- Begin and End
keymap.set("i", "<C-b>", "ESC^i", { desc = "Begin of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "End of line" })

-- Nav in InsertMode
keymap.set("i", "<C-h>", "<Left>", { desc = "Left" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Up" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Right" })

-- Save
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })

-- Clear Search
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Delete Single Character
keymap.set("n", "x", '"_x')

-- Window Spit
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal width & height" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split window" })
