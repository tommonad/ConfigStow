
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
    autocmd BufWinLeave *.md mkview
    autocmd BufWinEnter *.md silent! loadview
  augroup end

  augroup shell_shortcuts
    autocmd BufWritePost ~/.config/shortcuts/configs,~/.config/shortcuts/folders !bash shortcuts.sh 
  augroup end

  augroup sxhkd_reload
    autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd; setsid sxhkd -m1 &
  augroup end
  
abb _me linux54@riseup.net
abb _ba #!/usr/bin/env bash
let g:table_mode_corner='|'
filetype plugin on
]])

vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.syntax = "on"
vim.o.path = vim.o.path .. ',/usr/include/**'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 300
vim.o.inccommand = 'split'
vim.o.pumheight = 15
-- vim.o.cmdheight = 2
vim.o.fileencoding = 'utf-8'
vim.o.hidden = true

-- Tabs
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.autoindent = true

-- Performance
-- vim.o.maxmempattern = 1000000
-- vim.o.maxmem = 30000000

-- Indent
vim.o.smartindent = true

vim.ognorecase = true
vim.o.smartcase = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.o.undofile = true

-- Highlight search
vim.o.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.o.incsearch = true

-- Cursor
vim.o.cursorline = true
vim.o.cursorcolumn = true

vim.o.termguicolors = true
vim.o.scrolloff = 10
vim.o.signcolumn = "yes"

vim.o.updatetime = 50
vim.o.colorcolumn = "80"
vim.o.laststatus = 3
vim.o.winbar ="%f %m"

-- Append 'vertical' option to diffopt in Lua
vim.opt.diffopt:append('vertical')


-- Set individual listchars options in Lua
vim.opt.list = true  -- Enable 'list' to activate listchars

-- Set listchars components
vim.opt.listchars:append({ eol = ' ', tab = '▸ ', trail = '·' })

vim.cmd([[set iskeyword+=-]])

-- Disable Perl provider in Neovim
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = '/usr/bin/python3'
