-- netrw remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --opens netrw

-- copy pasting
vim.keymap.set("n", "Y", "y$") -- yanks till the end of the line, like C for change or D for delete
vim.keymap.set("n", "J", "mzJ`z") -- Marks the point (mz), joins the lines (J) and gets back to the marked place (`z).
vim.keymap.set({"n","v"}, "<leader>y", "\"+y") -- Prefix y with leader to send to system clipboard
vim.keymap.set({"n","v"}, "<leader>Y", "\"+Y") -- Prefix y with leader to send to system clipboard
vim.keymap.set("x", "<leader>p", "\"+p") -- deletes to void registry to avoid changing registry content
vim.keymap.set("x", "<leader>P", "\"_dP") -- deletes to void registry to avoid changing registry content

-- search remaps
vim.keymap.set("n", "n", "nzzzv") -- n = next search, zz = center cursor on screen, zv = open fold if exist
vim.keymap.set("n", "N", "Nzzzv") -- N = previous search, zz = center cursor on screen, zv = open fold if exist

-- Add additional undo breakpoints on these simbols, makes undo more granular
vim.keymap.set("i", ",", ",<c-g>u") 
vim.keymap.set("i", ".", ".<c-g>u") 
vim.keymap.set("i", "!", "!<c-g>u") 
vim.keymap.set("i", "?", "?<c-g>u") 

-- Moving text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move selection down in visual
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move selection up in visual
vim.keymap.set("i", "<C-k>", "<esc>:m .-2<CR>==") -- move line up in insert
vim.keymap.set("i", "<C-j>", "<esc>:m .+1<CR>==") -- move line down in insert
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==") -- move line up in in normal mode
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==") -- move line down in in normal mode

-- Window management
vim.keymap.set("n", "<C-C>", "<C-W><C-C>") -- close window with ctrl+c

-- Testing remaps and functions
