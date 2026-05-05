vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "GitSignsAdd", { link = "Moremsg" })
        vim.api.nvim_set_hl(0, "GitSignsChange", { link = "Warningmsg" })
        vim.api.nvim_set_hl(0, "GitSignsDelete", { link = "Errormsg" })
    end,
})

---transparency---
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

vim.opt.background = 'dark'
