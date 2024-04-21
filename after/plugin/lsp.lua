local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'bashls',
  'jsonls',
  'ansiblels',
  'yamlls',
  'docker_compose_language_service',
  'dockerls',
  'gopls',
  'luau_lsp',
  'rust_analyzer',
  'pyright',
})

-- Fix Undefined global 'vim'
lsp.configure('luau_lsp', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true }) -- open a float window to check lsp message
vim.api.nvim_set_keymap('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true }) -- go to previous error
vim.api.nvim_set_keymap('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true }) -- go to next error
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true }) -- open telescope to check lsp message
vim.api.nvim_set_keymap('n', '<leader>gb', '<cmd>lua vim.gitblame.open_float()<CR>', { noremap = true, silent = true }) -- open a float window to check lsp message
vim.api.nvim_set_keymap("n", "<leader>Q", "<cmd>lua require'utils'.toggle_qf('l')<CR>", { desc = "toggle location list" }) -- show remaps on quickfix

