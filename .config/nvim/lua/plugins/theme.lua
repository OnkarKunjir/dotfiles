return {
    --{
    --    "rose-pine/neovim",
    --    name = "rose-pine",
    --    opts = {
    --        -- disable_background=true,
    --    },
    --    config = function()
    --        color = color or "rose-pine"
    --        vim.cmd.colorscheme(color)

    --        -- make window trasnparent.
    --        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --    end
    --},
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
