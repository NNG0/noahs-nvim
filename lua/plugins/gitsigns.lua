vim.pack.add({
    "https://github.com/lewis6991/gitsigns.nvim",
})

local gs = require('gitsigns')

gs.setup({
    current_line_blame = true,
})

vim.keymap.set({ 'n', 'v' }, '<leader>gsp', gs.preview_hunk_inline)
vim.keymap.set({ 'n', 'v' }, '<leader>gss', gs.stage_hunk)
vim.keymap.set({ 'n', 'v' }, '<leader>gsr', gs.reset_hunk)
vim.keymap.set({ 'n', 'v' }, '<leader>gsd', gs.diffthis)
