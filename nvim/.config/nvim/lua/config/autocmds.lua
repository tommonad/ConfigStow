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

-- Define a function to check if a buffer should save/load views
local function should_save_view()
  local ft = vim.bo.filetype
  local bt = vim.bo.buftype
  return not (bt == "nofile" or bt == "help" or bt == "quickfix" or ft == "lazy" or ft == "TelescopePrompt")
end

-- Save view when leaving a window
vim.api.nvim_create_autocmd("BufWinLeave", {
  callback = function()
    if should_save_view() then
      vim.cmd("mkview")
    end
  end,
})

-- Load view when entering a window
vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function()
    if should_save_view() then
      vim.cmd("silent! loadview")
    end
  end,
})
