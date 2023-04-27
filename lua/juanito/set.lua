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
vim.opt.hlsearch = false -- Highlight partial search
vim.opt.incsearch = true -- Incremental search to highlight partial matches
vim.opt.ignorecase = true -- Do case insensitive matching
vim.opt.smartcase = true -- Do smart case matching, ignorecase needs to be set
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- set spellcheck
vim.opt.spell = true
vim.opt.spelllang = { 'en', 'es' }
vim.opt.syntax.spell = toplevel

-- set spliting config
vim.opt.splitbelow = true
vim.opt.splitright = true

-- set folding
vim.opt.foldmethod = 'syntax' -- Folding method used, according to syntax
vim.opt.foldnestmax = 10 -- Set maximum nested foldings, up to 20

-- set misc
vim.opt.termguicolors = true
vim.opt.completeopt = 'menuone,noselect' -- autocomplete options

-- set blammer
vim.g.blamer_enabled = 1

-- set cursorline
vim.wo.cursorline = true
