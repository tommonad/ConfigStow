
-- Vimwiki Keymaps and Configuration

-- Local keymap function for convenience
local keymap = vim.keymap.set

-- Set textwidth to 80 for Markdown files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    command = "setlocal textwidth=80",
})

-- Templates
keymap("n", "<leader>wi", ":r ~/.config/nvim/Templates/meditation.md<CR>")

-- Index file
keymap("n", "<leader>ww", "<Plug>VimwikiIndex")
keymap("n", "<leader>wb", "<Plug>VimwikiGoBackLink")
keymap("n", "<leader>wr", "<Plug>VimwikiRenameFile")
keymap({ "n", "v" }, "<leader>wl", "<Plug>VimwikiToggleListItem")

-- Diary
keymap("n", "<leader>di", "<Plug>VimwikiDiaryIndex")
keymap("n", "<leader>dn", "<Plug>VimwikiMakeDiaryNote")
keymap("n", "<leader>dl", "<Plug>VimwikiDiaryGenerateLinks")
keymap("n", "<leader>dy", "<Plug>VimwikiMakeYesterdayDiaryNote")
keymap("n", "<leader>dm", "<Plug>VimwikiMakeTomorrowDiaryNote")

-- Vimwiki Configuration
vim.g.vimwiki_list = {
  {
    path = '/home/tom/vimwiki/vimwiki_work_md/',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '/home/tom/vimwiki/vimwiki_personal_md/',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '/home/tom/vimwiki/journal_md/',
    syntax = 'markdown',
    ext = '.md'
  }
}

vim.g.vimwiki_ext2syntax = { 
  ['.md'] = 'markdown', 
  ['.markdown'] = 'markdown', 
  ['.mdown'] = 'markdown' 
}

vim.g.vimwiki_color = 'slate'
vim.g.vimwiki_markdown_link_ext = 1
vim.g.vimwiki_hl_headers = 1
vim.g.vimwiki_hl_cb_checked = 1
vim.g.vimwiki_folding = 'custom'
