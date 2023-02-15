-- Definitions
local automcmd = vim.api.nvim_create_automcmd

-- function and remap to toggle relative numbers.
vim.keymap.set("n", "<leader>nr", function()
    vim.opt.nu = false
    vim.opt.relativenumber = false
end)

vim.keymap.set("n", "<leader>rn", function()
    vim.opt.nu = true
    vim.opt.relativenumber = true
end)
