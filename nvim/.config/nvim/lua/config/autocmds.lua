-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Reload sxhkd when its config is saved
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*sxhkdrc",
  command = "!pkill -USR1 sxhkd; setsid sxhkd -m1 &",
})

-- Reload dwm when its config is saved
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*dwm/config.h",
  command = "!cd ~/.config/suckless/dwm/ && sudo make clean install",
})

-- Reload st when its config is saved
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*st/config.h",
  command = "!cd ~/.config/suckless/st/ && sudo make clean install",
})

-- Reload dmenu when its config is saved
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*dmenu/config.h",
  command = "!cd ~/.config/suckless/dmenu/ && sudo make clean install",
})

-- Save folds automatically
vim.api.nvim_create_autocmd("BufWinLeave", {
  pattern = "*",
  callback = function()
    if vim.fn.bufname("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("mkview")
    end
  end,
})

-- Load folds automatically
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    if vim.fn.bufname("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent! loadview")
    end
  end,
})
