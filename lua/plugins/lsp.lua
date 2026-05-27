vim.pack.add({
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
})

require("mason").setup()

local LUA = "lua_ls"
local MD = "markdown-oxide"
local PY = "pyrefly"
local BASH = "bash-language-server"
local SHELLCHECK = "shellcheck"
local SHELLFORMATING = "shfmt"

require("mason-tool-installer").setup({
    ensure_installed = {
        LUA,
        MD,
        PY,
        BASH,
        SHELLCHECK,
        SHELLFORMATING
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

vim.lsp.enable({
    LUA,
    MD,
    PY,
    BASH,
})
