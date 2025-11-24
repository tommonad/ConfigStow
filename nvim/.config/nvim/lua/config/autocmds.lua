-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "dxhd.sh",
  callback = function()
    vim.fn.system("dxhd -r")
    vim.fn.system("notify-send 'dxhd reloaded ✅'")
  end,
})

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.sh",
  callback = function()
    -- Insert template
    vim.cmd("0r ~/.config/nvim/templates/skeleton.sh")

    -- Replace {{DATE}} with today's date
    local date = os.date("%Y-%m-%d")
    vim.cmd("silent! %s/{{DATE}}/" .. date .. "/g")
  end,
})
