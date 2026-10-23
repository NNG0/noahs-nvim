-- https://mason-registry.dev/registry/list
-- :help lspconfig-all

vim.pack.add({
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
})

require("mason").setup()

-- package
local LUA = "lua_ls"
local MD_PACKAGE = "markdown-oxide"
local PY = "pyrefly"
local BASH_PACKAGE = "bash-language-server"
local SHELLCHECK = "shellcheck"
local SHELLFORMATING = "shfmt"
local RUST_PACKAGE = "rust-analyzer"
local LATEX = "texlab"

-- config
local RUST = "rust_analyzer"
local BASH = "bashls"
local MD = "markdown_oxide"

require("mason-tool-installer").setup({
    ensure_installed = {
        LUA,
        MD_PACKAGE,
        PY,
        BASH_PACKAGE,
        SHELLCHECK,
        SHELLFORMATING,
        RUST_PACKAGE,
        LATEX,
    }
})
require("mason-lspconfig").setup({
    automatic_enable = false
})

-- vim.lsp.config()
vim.lsp.config(LUA, {})
vim.lsp.config(MD, {})
vim.lsp.config(PY, {})
vim.lsp.config(BASH, {})
vim.lsp.config(RUST, {})

vim.lsp.enable({
    LUA,
    MD,
    PY,
    BASH,
    RUST,
    LATEX,
})
