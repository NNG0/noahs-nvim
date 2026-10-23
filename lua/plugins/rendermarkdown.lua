vim.pack.add({
    'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})

require('render-markdown').setup({
    html = {
        enabled = false
    },
    yaml = {
        enabled = false
    }
})
