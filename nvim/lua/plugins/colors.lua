return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,

                float = {
                    transparent = true
                }
            })
            vim.cmd.colorscheme("catppuccin-nvim")
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            options = {
                theme = "catppuccin-nvim"
            }
        }
    }
}
