return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            indent = {
                char = '│',
            },
            scope = {
                show_start = false,
                show_end = false,
                highlight = { 'Function', 'Label', 'Conditional', 'Repeat', 'Keyword' }
            },
        },
        config = function(_, opts)
            require('ibl').setup(opts)
        end
    },
}
