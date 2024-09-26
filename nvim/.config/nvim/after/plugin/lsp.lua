-- init.lua or a separate configuration file

local lsp = require('lsp-zero')

lsp.preset('recommended')

-- Set up mason and ensure the servers you want are installed
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'eslint',
    'lua_ls',
    -- Add other servers you want to use here
  }
})

-- Set up LSP servers
require('mason-lspconfig').setup_handlers {
  function(server_name)
    lsp.configure(server_name, {})
  end,
}

-- Customize nvim-cmp
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp.setup({
  mapping = cmp_mappings,
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' }, -- Add path source here
    { name = 'luasnip' },
    { name = 'sumneko_lua' },
  },
  -- Add other configurations here if needed
})


lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  -- Add your keymaps here
  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
  vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
  vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
  vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
  vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.keymap.set({ 'n', 'x' }, '<F6>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
  vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts) -- Example: vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
end)

lsp.setup()

-- (Optional) Configure lua language server for Neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
