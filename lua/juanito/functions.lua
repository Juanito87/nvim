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

-- resize splits if window got resized
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- remove auto comment next line
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  group = augroup("remove_auto_comment"),
  callback = function()
    vim.cmd("setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
  end,
})

-- set cursorline only in focused window
vim.api.nvim_create_autocmd({ "WinEnter", "WinLeave" }, {
  group = augroup("cursorline"),
  callback = function()
    vim.wo.cursorline = vim.fn.win_getid() == vim.fn.win_getid()
  end,
})
