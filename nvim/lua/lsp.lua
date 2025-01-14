local lspconfig = require('lspconfig')

-- Configure LSP servers
local on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) -- Go to definition
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Example: Configure Pyright (Python)
lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Add more servers as needed
