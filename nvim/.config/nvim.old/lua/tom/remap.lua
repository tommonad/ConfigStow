vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap('n', '<leader>e', '%', { remap = true, desc = 'go to matching pair' })
-- toggle spell check
keymap("n", "<f5>", [[:setlocal spell! spelllang=en_gb,<cr>]], {desc = 'Spellcheck toggle'})
keymap('n', '<F3>', "<cmd>pu=strftime('%a %b-%d-%Y  %H:%M')<CR>i# <ESC>", {desc = 'Insert date'})
-- keymap('n', '<space>w', '<cmd>write<cr>')
keymap('n', '<leader>a', ':keepjumps normal! ggVG<cr>', {desc = 'Select whole file'})
keymap("n", "J", "mzJ`z", {desc = 'Join' })
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("n", "<leader>m", vim.cmd.Mason, {desc = 'Mason'})
-- keymap("n", "<leader>cd", "<cmd>lcd %:p:h<cr><cmd><pwd><cr>", {desc = 'Cd file location'})

-- Indent
--
keymap("v", "<", "<gv", {desc = 'Indent left', silent = false})
keymap("v", ">", ">gv", {desc = 'Indent left', silent = false})

-- Move
keymap("v", "J", ":m '>+1<CR>gv=gv", {desc = 'Move highlighted up', silent = false})
keymap("v", "K", ":m '<-2<CR>gv=gv", {desc = 'Move highlighted down', silent = false})

-- greatest remap ever
keymap("x", "<leader>p", [["_dP]])
-- keymap("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
keymap({ "n", "v" }, "<leader>y", [["+y]], {desc = 'Yank movement'})
keymap("n", "<leader>Y", [["+Y]], {desc = 'Yank line'})

keymap({ "n", "v" }, "<leader>d", [["_d]])

keymap("n", "Q", "<nop>")

-- Buffer navigation
keymap("n", "<leader>bn",  "<cmd>bnext<cr>", {desc = 'Next buffer'})
keymap("n", "<leader>bp",  "<cmd>bprevious<cr>", {desc = 'Previous buffer'})
keymap("n", "<leader>bd", '<cmd>%bd|e#|normal`"<cr>', {desc = 'close all buffers'})
keymap("n", "<leader>bq", "<cmd>bdelete<cr>", {desc = 'Close current buffer'})
keymap("n", "<leader>bf", vim.lsp.buf.format, {desc = 'Format buffer'})

-- vim.keymap.set("n", "C-k", "<cmd>cnext<cr>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<cr>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<cr>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<cr>zz")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = 'substitute current word'})
keymap("n", "<leader>S", [[:%s//g<Left><Left>]], {desc = 'Substitute'})
keymap("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true, desc = 'make executable' })

-- Navigation on splits
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Resize splits
keymap("n", "<C-Left>", ":vertical resize +3<cr>")
keymap("n", "<C-Right>",":vertical resize -3<cr>")
keymap("n", "<C-Up>",":resize +3<cr>")
keymap("n", "<C-Down>", ":resize -3<cr>")

-- keymap("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)
