-- requires
require("juanito.set")
require("juanito.remap")

-- set color scheme and transparency
vim.o.background = "dark"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- set netrw config
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
