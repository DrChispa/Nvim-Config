local opt = vim.opt 

--Numbers
opt.relativenumber = true
opt.number = true

--Indent & tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--Line wrapping
opt.wrap = false

--Search
opt.ignorecase = true
opt.smartcase = true

--Cursor line
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

--split
opt.splitright = true
opt.splitbelow = true

--Is Word
opt.iskeyword:append("-")

-- turn off swapfile
opt.swapfile = false
