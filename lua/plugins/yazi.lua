vim.pack.add({
    "https://github.com/mikavilpas/yazi.nvim",
    "https://github.com/nvim-lua/plenary.nvim"
})

require("yazi").setup({
    open_for_directories = true,
    keymaps = {
        show_help = "<f1>",
    },
    yazi_floating_window_winblend = 20

})

vim.keymap.set({ "n", "v" }, "<leader>e", "<cmd>Yazi<cr>", {
    desc = "Open yazi at the current file",
})

vim.keymap.set("n", "<leader>cw", "<cmd>Yazi cwd<cr>", {
    desc = "Open the file manager in nvim's working directory",
})

vim.keymap.set("n", "<c-up>", "<cmd>Yazi toggle<cr>", {
    desc = "Resume the last yazi session",
})
