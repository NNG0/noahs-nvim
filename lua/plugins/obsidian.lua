vim.pack.add({
    "https://github.com/obsidian-nvim/obsidian.nvim",
})

require("obsidian").setup({
    workspaces = {
        {
            name = "personal",
            path = "~/shared_docs/personal",
        },
        {
            name = "uni",
            path = "~/shared_docs/uni",
        },
    },
    legacy_commands = false,
})
