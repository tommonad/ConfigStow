return {
  "dhruvasagar/vim-table-mode",
  cmd = { "TableModeToggle" },
  keys = {
    { "<leader>tm", "<cmd>TableModeToggle<CR>", desc = "Toggle Table Mode" },
  },
  init = function()
    vim.g.table_mode_corner = "|" -- REQUIRED for Markdown
  end,
}
