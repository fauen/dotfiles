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
