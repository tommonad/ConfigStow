 -- lsp.preset("recommended")

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('tpope/vim-surround')
  use('vimwiki/vimwiki')
  use ('ethanholz/nvim-lastplace')
  use('nvim-lualine/lualine.nvim')
  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }

  use {
    'rcarriga/nvim-notify',
    config = function()
      require('notify')
    end
  }
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons' -- optional
    },

use {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require'colorizer'.setup()
  end
},

}

-- Add lsp-zero and dependencies
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      {'hrsh7th/nvim-cmp'},                  -- Required
      {'hrsh7th/cmp-nvim-lsp'},              -- Required
      {'hrsh7th/cmp-buffer'},                -- Optional
      {'hrsh7th/cmp-path'},                  -- Optional
      {'saadparwaiz1/cmp_luasnip'},          -- Optional
      {'hrsh7th/cmp-nvim-lua'},              -- Optional
      {'L3MON4D3/LuaSnip'},                  -- Required
      {'rafamadriz/friendly-snippets'},      -- Optional
    }
  }

use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- Your configuration comes here
      -- or leave it empty to use the default settings
    }
  end
}

    use('echasnovski/mini.icons')
end)
