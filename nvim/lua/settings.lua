vim.opt.number = true		-- Set line numbers
vim.opt.relativenumber = true	-- Relative line numbers
vim.opt.expandtab = true	-- Use spaces instead of tabs
vim.opt.tabstop = 4		-- Tab width
vim.opt.shiftwidth = 4		-- Indentation width
vim.opt.smartindent = true	-- Smart indentation
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.splitright = true	-- Open vertical splits to the right
vim.opt.splitbelow = true	-- Open horizontal splits below
vim.opt.termguicolors = true	-- Enable true colors
vim.opt.cursorline = true	-- Highlight the current line

-- Key mappings
vim.g.mapleader = ' '  -- Set leader key
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true }) -- Save file
vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true }) -- Quit

-- Do it right
vim.keymap.set('n', '<Left>', ':echoe "Use H"<CR>', { silent = false })
vim.keymap.set('n', '<Down>', ':echoe "Use J"<CR>', { silent = false })
vim.keymap.set('n', '<Up>', ':echoe "Use K"<CR>', { silent = false })
vim.keymap.set('n', '<Right>', ':echoe "Use L"<CR>', { silent = false })

-- Window, tabs and splits
-- vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
-- vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
-- vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
-- vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- vim.keymap.set('n', '<C-n>c', ':tabnew<CR>')
-- vim.keymap.set('n', '<C-w><C-l>', ':tabnext<CR>')
-- vim.keymap.set('n', '<C-w><C-h>', ':tabprevious<CR>')
-- vim.keymap.set('n', '<C-w>-', ':split<CR>')
-- vim.keymap.set('n', '<C-w>_', ':vertical split<CR>')
