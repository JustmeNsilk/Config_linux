return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                contrast = "hard", -- soft, medium, hard
            })
            vim.cmd.colorscheme("gruvbox")
        end,
    },


    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "gruvbox",
                },
            })
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup()
        end,
    },

    {

        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("bufferline").setup({
                options = {
                    separator_style = "slant",
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "Explorer",
                            highlight = "Directory",
                            separator = true,
                        },
                    },
                },
            })
        end,
    },
}

