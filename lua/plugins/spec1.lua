return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html", "rust", "python", "json" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        opts = {
            window = {
                mappings = {
                    ["P"] = {
                        "toggle_preview",
                        config = {
                            use_float = false,
                            use_snacks_image = false,
                            use_image_nvim = false
                        }
                    },
                    ["l"] = "focus_preview",
                    ["<C-b>"] = { "scroll_preview", config = { direction = 10 } },
                    ["<C-f>"] = { "scroll_preview", config = { direction = -10 } },
                },
                position = 'float',
                --filesystem = { hijack_netrw_behavior = 'disabled' }
            },
        },
        lazy = false,
        config = function()
            vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle float<CR>', {})
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = "ayu_dark"
                }
            })
        end
    },
}
