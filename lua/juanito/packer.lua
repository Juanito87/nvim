--builtin.find_files, {}) This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Package manager
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
-- fuzzy finder
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
-- Color scheme
use { "ellisonleao/gruvbox.nvim" }
-- lsp (highligh, syntax, etc)
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
-- improve workflow for multiple files
use('theprimeagen/harpoon')
-- undo tree
use('mbbill/undotree')
-- git management
use('tpope/vim-fugitive')
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
-- End of config file
end)
