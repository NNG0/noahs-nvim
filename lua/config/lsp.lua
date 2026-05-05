vim.lsp.enable('pyrefly')
vim.lsp.enable('markdown')
vim.lsp.enable('rust-analyzer')

vim.lsp.config['lua_ls'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
}

vim.lsp.enable('lua_ls')

vim.diagnostic.config({
    virtual_lines = {
        current_line = true
    },
})
