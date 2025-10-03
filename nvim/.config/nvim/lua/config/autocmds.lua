-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "sxhkdrc",
  callback = function()
    -- Reload sxhkd config
    vim.fn.system("pkill -USR1 sxhkd")
    -- Optional: restart sxhkd instance if you want
    -- vim.fn.system("setsid sxhkd -m1 &")

    -- Notify user about successful reload
    vim.notify("sxhkd config reloaded!", vim.log.levels.INFO)
  end,
})
