vim.pack.add({
    "https://github.com/folke/which-key.nvim"
})

local wk = require("which-key")

wk.setup({
    triggers = {
        { "<auto>", mode = "nixsotc" },
        { "g",      mode = { "n", "v" } },
    },
})

wk.add({
    { "gr",    group = "LSP" },
    { "gra",   desc = "Code Action",         mode = { "n", "v" } },
    { "gri",   desc = "Go to Implementation" },
    { "grn",   desc = "Rename Symbol" },
    { "grr",   desc = "References" },
    { "grt",   desc = "Type Definition" },
    { "grx",   desc = "Run CodeLens" },
    { "gO",    desc = "Document Symbols" },
    { "<C-s>", desc = "Signature Help",      mode = "i" },
})

vim.keymap.set(
    "n",
    "<leader>?",
    function()
        require("which-key").show({ global = false })
    end,
    {
        desc = "Buffer Local Keymaps (which-key)"
    }
)
