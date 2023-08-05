-- set git status remap
vim.keymap.set("n", "<leader>gs", vim.cmd.Git) -- start git buffer and check status
vim.keymap.set("n", "<C-g>dv", ":Gvdiffsplit!<CR>") -- diff split against HEAD vertical
vim.keymap.set("n", "<C-g>dh", ":Gdiffsplit!<CR>") -- diff split against HEAD horizontal
vim.keymap.set("n", "<C-g>dt", ":windo diffthis<CR>") -- diff files in all windows
vim.keymap.set("n", "<C-g>dm", ":Gdiff!<CR>") -- on conflicted file opens a 3-way diff
vim.keymap.set("n", "<C-g>2", ":diffget //2 | diffupdate<CR>") -- On the middle file get the diff from Head
vim.keymap.set("n", "<C-g>3", ":diffget //3 | diffupdate<CR>") -- on the middle file get the diff from the other branch
vim.keymap.set("n", "<C-g>do", ":diffo!<CR>") -- turn off diff mode

local juanito_Fugitive = vim.api.nvim_create_augroup("juanito_Fugitive", {})

-- create buffer window to do more git commands
local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = juanito_Fugitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        vim.keymap.set("n", "<leader>gc", function()
            vim.cmd.Git('commit')
        end) 
        vim.keymap.set("n", "<leader>p", function()
            local opts = {buffer = bufnr, remap = false}
            vim.cmd.Git('push')
        end, opts)

        -- rebase always
        vim.keymap.set("n", "<leader>P", function()
            vim.cmd.Git({'pull',  '--rebase'})
        end, opts)

        -- NOTE: It allows me to easily set the branch i am pushing and any tracking
        -- needed if i did not set the branch up correctly
        vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)
    end,
})
