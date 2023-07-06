----------------------------------
-- Vim Settings
----------------------------------

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 6

vim.opt.updatetime = 50

-- Disable netrw in favor of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-----------------------------------
-- Remappings
-----------------------------------

vim.g.mapleader = " "

-- Return to last directory
vim.keymap.set('n', '<Leader>cx', vim.cmd.Ex)

-- Navigate to '~/dev' directory
vim.keymap.set('n', '<Leader>cd', ':edit ~/dev<cr>')

-- Navigate to config directory
vim.keymap.set('n', '<Leader>cc', ':edit ~/AppData/Local/nvim<cr>')

-- Open terminal split in current directory
vim.keymap.set('n', '<Leader>`', ':belowright split | resize 20 | set norelativenumber | set nonumber | terminal<cr>:startinsert<cr>', {silent = true})

-- When in terminal mode, allow Ctrl+D to close the terminal
vim.keymap.set('t', '<C-d>', '<C-\\><C-n>:bd!<cr>', {silent = true})

-- When in terminal mode, allow escape to exit terminal mode
vim.keymap.set('t', '<esc>', '<C-\\><C-n>', {silent=true})

-----------------------------------
-- Telescope
-----------------------------------

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-----------------------------------
-- nvim-tree
-----------------------------------
require("nvim-tree").setup()
local api = require("nvim-tree.api")
vim.keymap.set('n', '<leader><CR>', api.tree.change_root_to_node)
vim.keymap.set('n', '<leader>.', api.tree.change_root_to_parent)

-----------------------------------
-- Barbar
-----------------------------------

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Close existing tab
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)

-- Move to previous/next tab
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Go to tabs 1-5
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
