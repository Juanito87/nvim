-- set leader
vim.g.mapleader = " "

-- set numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- set indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- set file management options (undo plugin integration)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- set highlight and navigation
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- set spellcheck
vim.opt.spell = true
vim.opt.spelllang = { 'en', 'es' }
vim.opt.syntax.spell = toplevel

-- set misc
vim.opt.termguicolors = true
vim.o.completeopt = 'menuone,noselect' -- autocomplete options
