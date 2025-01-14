return {
    -- Lazy.nvim itself
    { "folke/lazy.nvim" },

    -- Essential plugins
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" }, -- Autocompletion
    { "hrsh7th/cmp-nvim-lsp" }, -- LSP source for nvim-cmp
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-lualine/lualine.nvim" },
    { "kyazdani42/nvim-tree.lua", dependencies = { "kyazdani42/nvim-web-devicons" } },

    -- Optional plugins for extra functionality
    { "lewis6991/gitsigns.nvim" }, -- Git integration
    { "folke/which-key.nvim" }, -- Keybinding hints

    -- Set the theme
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}
}
