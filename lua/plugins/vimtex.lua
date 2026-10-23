vim.pack.add({
    "https://github.com/lervag/vimtex",
})

vim.g.vimtex_view_method = "zathura"
vim.g.latex_view_general_viewer = 'zathura'
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
    out_dir = "build",
    options = {
        "-interaction=nonstopmode",
        "-synctex=1",
    },
}
