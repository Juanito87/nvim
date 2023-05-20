-- todo list config
-- set vim option window width to 80 in lua

-- make function to make the following remaps only on a bujo buffer
local juanito_todo = vim.api.nvim_create_augroup("juanito_todo", {})

-- create buffer window to do more git commands
local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = juanito_todo,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "bujo" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        vim.keymap.set("n", "<leader>i", ":BujoAddnormal<CR>")
        vim.keymap.set("i", "<C-i>", ":BujoAddinsert<CR>")
        vim.keymap.set("n", "<leader>q", ":BujoChecknormal<CR>")
        vim.keymap.set("i", "<C-q>", ":BujoCheckinsert<CR>")
    
    end,
})
-- set remaps to insert task in todo list
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==") -- move line up in in normal mode
-- set remap to check task in todo list
vim.keymap.set("n,i", "<leader>j", ":m .+1<CR>==") -- move line up in in normal mode
