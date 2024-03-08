-- Set Leader
vim.g.mapleader = " "
local opts = { noremap=true, silent=true }

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

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Delete a Line
keymap.set("n", "dw", "vb_d", { desc = "Delete a line backward" })

-- New Tab
keymap.set("n", "te", ":tabedit<CR>", opts, { desc = "Open new tab" })
keymap.set("n", "tc", ":tabclose<CR>", opts, { desc = "Close current tab" })
keymap.set("n", "<tab>", ":tabnext<CR>", opts, { desc = "Next tab" })
keymap.set("n", "<s-tab>", ":tabprevious<CR>", opts, { desc = "Previous tab" })

-- Split Window
keymap.set("n", "sv", ":vsplit<CR>", opts, { desc = "Split window vertically" })
keymap.set("n", "ss", ":split<CR>", opts, { desc = "Split window horizontally" })

-- Move Window
keymap.set("n", "sh", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "sl", "<C-w>l", { desc = "Go to right window" })
keymap.set("n", "sk", "<C-w>k", { desc = "Go to upper window" })
keymap.set("n", "sj", "<C-w>j", { desc = "Go to lower window" })

-- Rezise Window
keymap.set("n", "<C-w><up>", ":resize +2<CR>", { desc = "Increase window height" })
keymap.set("n", "<C-w><down>", ":resize -2<CR>", { desc = "Decrease window height" })
keymap.set("n", "<C-w><left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
keymap.set("n", "<C-w><right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Diagnostics 
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts, { desc = "Next Diagnostic" })
