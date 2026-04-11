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
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "python", "lua", "c", "markdown" },
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

-- return {
--     'nvim-treesitter/nvim-treesitter',
--     branch = 'master',
--     lazy = false,
--     build = ':TSUpdate',
--     config = function()
--         require('nvim-treesitter.configs').setup({
--             ensure_installed = { 'lua', 'luadoc', 'markdown', 'markdown_inline', 'vim', 'vimdoc', 'c', 'python' },
--             auto_install = true,
--             highlight = {
--                 enable = true,
--                 additional_vim_regex_highlighting = false,
--             },
--             indent = {
--                 enable = true
--             },
--         })
--
--         vim.wo.foldmethod = 'expr'
--         vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
--         vim.opt.foldenable = false
--         vim.opt.foldlevel = 20
--     end,
-- }
