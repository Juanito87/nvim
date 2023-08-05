-- Require
local builtin = require('telescope.builtin')
require("telescope").load_extension("git_worktree")
require('telescope').load_extension('fzf')

-- Remaps
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {}) -- open helptags on telescope
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- search for files in folder
vim.keymap.set('n', '<C-P>', builtin.git_files, {}) -- search in your current git repo
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end) -- grep in path recursively
vim.keymap.set('n', '<leader>wm', function()
    require('telescope').extensions.git_worktree.git_worktrees() -- manage worktrees on telescope
end)
vim.keymap.set('n', '<leader>wc', function() 
    require('telescope').extensions.git_worktree.create_git_worktree() -- create worktree 
end)
