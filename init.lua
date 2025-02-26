require("config.lazy")

vim.opt.number = true
vim.opt.wrap = false

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.termguicolors = true

vim.opt.clipboard:append {"unnamedplus"}
vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
