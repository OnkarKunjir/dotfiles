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

        -- set color scheme for dap
        local mocha = require("catppuccin.palettes").get_palette("mocha")
        vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = mocha.red })
        vim.api.nvim_set_hl(0, "DapStopped", { fg = mocha.yellow, bg = mocha.surface1 })


        vim.fn.sign_define("DapBreakpoint", {
            text = "●",
            texthl = "DapBreakpoint",
            linehl = "",
            numhl = "DapBreakpoint",
        })

        vim.fn.sign_define("DapStopped", {
            text = "→",
            texthl = "DapStopped",
            linehl = "DapStopped",
            numhl = "",
        })
    end
}
