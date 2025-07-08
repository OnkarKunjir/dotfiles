return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = false, 
            })

            color = color or "catppuccin-mocha"
            vim.cmd.colorscheme(color)
        end
    }
}
