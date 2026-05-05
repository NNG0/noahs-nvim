--- open pdfs in zathura instead of nvim buffer ---
vim.api.nvim_create_autocmd("FileType", {
  pattern = "pdf",
  callback = function(args)
 -- Close the buffer that was going to show binary content
    vim.cmd("bd! " .. args.buf)

    -- Open Zathura
    vim.fn.jobstart({ "zathura", args.file })  end,
})

-- auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})
