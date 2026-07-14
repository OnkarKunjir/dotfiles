return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',

    config = function()
        require("nvim-treesitter").install({
            "lua",
            "luadoc",
            "markdown",
            "markdown_inline",
            "vim",
            "vimdoc",
            "c",
            "python",
            "go"
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "python", "lua", "c", "markdown", "go" },
            callback = function()
                vim.treesitter.start()
                vim.wo.foldmethod = 'expr'
                vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

                vim.opt.foldenable = false
                vim.opt.foldlevel = 20
            end,
        })
    end
}
