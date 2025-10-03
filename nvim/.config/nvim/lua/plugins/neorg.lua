-- ~/.config/nvim/lua/plugins/neorg.lua
return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    ft = "norg",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.summary"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              computer = "~/notes/Computer",
            },
            default_workspace = "computer",
          },
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "norg" })
    end,
  },
}
