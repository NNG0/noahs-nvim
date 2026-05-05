--- open pdfs in zathura instead of nvim buffer ---
vim.api.nvim_create_autocmd("FileType", {
    pattern = "pdf",
    callback = function(args)
        -- Close the buffer that was going to show binary content
        vim.cmd("bd! " .. args.buf)

        -- Open Zathura
        vim.fn.jobstart({ "zathura", args.file })
    end,
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

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
            vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
            vim.keymap.set('i', '<C-Space>', function()
                vim.lsp.completion.get()
            end)
        end
        if client:supports_method('textDocument/inlayHint') then
            vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
        end
    end,
})

vim.api.nvim_create_autocmd("InsertCharPre", {
    callback = function()
        vim.lsp.completion.get()
    end,
})
