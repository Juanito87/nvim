-- netrw remaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --opens netrw

-- copy pasting
vim.keymap.set("n", "Y", "y$") -- yanks till the end of the line, like C for change or D for delete
vim.keymap.set("n", "J", "mzJ`z") -- Marks the point (mz), joins the lines (J) and gets back to the marked place (`z).

-- search remaps
vim.keymap.set("n", "n", "nzzzv") -- n = next search, zz = center cursor on screen, zv = open fold if exist
vim.keymap.set("n", "N", "Nzzzv") -- N = previous search, zz = center cursor on screen, zv = open fold if exist

-- Add additional undo breakpoints on these simbols, makes undo more granular
vim.keymap.set("i", ",", ",<c-g>u") 
vim.keymap.set("i", ".", ".<c-g>u") 
vim.keymap.set("i", "!", "!<c-g>u") 
vim.keymap.set("i", "?", "?<c-g>u") 

-- Moving text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("i", "<C-k>", "<esc>:m .-2<cr>==") 
vim.keymap.set("i", "<C-j>", "<esc>:m .+1<cr>==") 
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==") 
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==") 
