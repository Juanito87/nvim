-- requires
require("juanito.set")
require("juanito.remap")
require("juanito.packer")
require("juanito.functions")

-- set color scheme and transparency
vim.o.background = "dark"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- set netrw config
vim.g.netrw_banner = 0                -- Remove banner at the top
vim.g.netrw_liststyle = 3             -- Default directory view. Cycle with i
vim.g.netrw_altv = 1                  -- Files are opened to the right of netrw
vim.g.netrw_chgwin = -1               -- Files are opened in the netrw window
vim.g.netrw_winsize = 25              -- Window size
vim.g.netrw_list_hide= ".*.swp$, *.pyc$,  *.log$,  *.o$,  *.xmi$,  *.swp$,  *.bak$,  *.pyc$,  *.class$,  *.jar$,  *.war$,  *__pycache__*" -- Hide files with this extensions
--vim.g.netrw_browse_split = 0          -- Open netrw reusing the window| not good combination with pv.
--vim.g.netrw_browse_split = 0          -- New files are opened in a new vertical
--vim.g.netrw_sort_sequence = [\/]$,* -- Default config
