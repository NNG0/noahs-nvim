require("config.lazy")
require("config.lsp")

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

vim.opt.winborder = "rounded"

vim.opt.clipboard:append { "unnamedplus" }
---vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
---vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.opt.background = 'dark'

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "GitSignsAdd",    { link = "Moremsg" })
    vim.api.nvim_set_hl(0, "GitSignsChange", { link = "Warningmsg" })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { link = "Errormsg" })
  end,
})

vim.cmd("colorscheme oxocarbon")
---transparency---
---vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
---vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
---vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

vim.opt.cursorline = true

--- vimtex ---
vim.g.vimtex_view_method = 'zathura'
vim.g.latex_view_general_viewer = 'zathura'

--- open pdfs in zathura instead of nvim buffer ---
vim.api.nvim_create_autocmd("FileType", {
  pattern = "pdf",
  callback = function(args)
 -- Close the buffer that was going to show binary content
    vim.cmd("bd! " .. args.buf)

    -- Open Zathura
    vim.fn.jobstart({ "zathura", args.file })  end,
})
