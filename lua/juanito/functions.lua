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

-- clean trailing whitespace, newline and escape sequences
vim.keymap.set("n", "<leader>dw", ":%s/\\s\\+$//e<CR>")
vim.keymap.set("n", "<leader>dn", ":%s/\\n\\+\\%$//e<CR>")
vim.keymap.set("n", "<leader>ds", ":%s/\\^\\[\\+\\%$//e<CR>")

-- Highlight on yank from kickstart nvim
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
