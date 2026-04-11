return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        -- setup must be called before loading
        require("catppuccin").setup({
            auto_integrations = true,
        })
        vim.cmd.colorscheme "catppuccin-mocha"
    end
}
