require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
        go = "go run",
	python = "python3 -u",
	rust = "cd $dir && cargo run $fileName && $dir/$fileNameWithoutExt",
        sh = "bash"
	},
})
-- require("harpoon.term").sendCommand(1, require("code_runner.commands").get_filetype_command() .. "\n")

-- Remaps
vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
