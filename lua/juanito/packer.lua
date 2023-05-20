-- Package manager
return require('packer').startup(function(use)
    
-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- fuzzy finder
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  'nvim-lua/popup.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

-- Color scheme
use { "ellisonleao/gruvbox.nvim" }

-- highligh, syntax, comments, etc
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('numToStr/Comment.nvim') -- comments
use ('mbbill/undotree') -- undo tree

-- improve workflow for multiple files
-- mark files for quick access menu
use('theprimeagen/harpoon')

-- git management
use('tpope/vim-fugitive')
use('tpope/vim-sleuth')
use('APZelos/blamer.nvim')
use('ThePrimeagen/git-worktree.nvim')
-- Commenting out copilot, not usefull enough to pay 10 a month.
-- use('github/copilot.vim')

-- lsp (language server protocol)
use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}

-- markdown visualizer
use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

-- Code runner
use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }

-- lua airline
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- keymap reminder test
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {}
  end
}

-- tools
-- todo list
use{"vuciv/vim-bujo"}

-- vim movements game
use('ThePrimeagen/vim-be-good')

-- End of config file
end)
