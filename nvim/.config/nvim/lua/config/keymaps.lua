-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Neorg Note Taking Plugin
vim.keymap.set("n", "<localleader>cc", "<cmd>Neorg toc <cr>", { desc = "[neorg] Open table of contents" })
vim.keymap.set("n", "<localleader>ct", "<cmd>Neorg toggle-concealer <cr>", { desc = "[neorg] Toggle concealer" })
vim.keymap.set("n", "<localleader>jd", "<cmd>Neorg journal <cr>", { desc = "[neorg] neorg journal" })
vim.keymap.set("n", "<localleader>mx", function()
  vim.fn.system("chmod +x " .. vim.fn.expand("%"))
  print("Made executable: " .. vim.fn.expand("%"))
end, { desc = "chmod +x" })
vim.keymap.set("n", "<localleader>mX", function()
  vim.fn.system("chmod -x " .. vim.fn.expand("%"))
  print("Made not executable: " .. vim.fn.expand("%"))
end, { desc = "chmod -x" })
