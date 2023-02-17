-- set git status remap
-- create buffer window to do more git commands
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local juanito_Fugitive = vim.api.nvim_create_augroup("juanito_Fugitive", {})

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
        -- need to set modifiable on or open a new pane to display
        --vim.keymap.set("n", "<leader>gd", "Git diff", opts)
    end,
})
