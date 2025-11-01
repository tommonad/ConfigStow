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
              journal = "~/notes/journal",
            },
            default_workspace = "computer",
          },
        },
      },
    },
  },
}
