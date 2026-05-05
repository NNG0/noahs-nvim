vim.pack.add({
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
})

require("mason").setup()
require("mason-tool-installer").setup({
    ensure_installed = {
        "lua_ls",
        "markdown-oxide",
        "pyrefly",
        "black"
    }
})
require("mason-lspconfig").setup({
    automatic_enable = false
})

-- vim.lsp.config()
vim.lsp.config('lua_ls', {})
vim.lsp.config('markdown-oxide', {})
vim.lsp.config('pyrefly', {})
vim.lsp.config('black', {})

vim.lsp.enable({
    'lua_ls',
    "markdown-oxide",
    "pyrefly",
    "black"
})
