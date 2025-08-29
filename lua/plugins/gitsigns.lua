return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            local gs = require('gitsigns')
            gs.setup({
                current_line_blame = true,
                --[[current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
                    ignore_whitespace = false,
                },]]
                --current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
            })
            vim.keymap.set({'n','v'}, '<leader>gsh', gs.preview_hunk_inline)
            vim.keymap.set({'n','v'}, '<leader>gss', gs.stage_hunk)
            vim.keymap.set({'n','v'}, '<leader>gsr', gs.reset_hunk)
        end
    },
}
