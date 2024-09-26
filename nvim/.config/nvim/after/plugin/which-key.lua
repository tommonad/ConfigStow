local wk = require("which-key")

wk.setup {
  -- Your configuration options here
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- Add operators that will trigger motion and text object completion
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't affect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<cr>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
}

-- local wk = require("which-key")
wk.add({
  { "<leader>f", group = "Telescope" }, -- group
  -- { "<leader>fc", "<cmd>lcd %:p:h<cr><cmd><pwd><cr>", desc = "Cd to file location", mode = "n" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep", mode = "n" },
  { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Search buffers", mode = "n" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Search help", mode = "n" },
  { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Search recent", mode = "n" },
  { "<leader>w", group = "Vimwiki" }, -- group
  { "<leader>d", group = "Diary" }, -- group
  { "<leader>b", group = "Buffers" }, -- group
  -- { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
  -- { "<leader>b", group = "buffers", expand = function()
  --     return require("which-key.extras").expand.buf()
  --   end
  --   },
}
)
