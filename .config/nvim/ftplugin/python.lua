vim.keymap.set(
    "n",
    "<leader>r",
    function()
        vim.cmd("write")
        vim.cmd("!python %")
    end,
    { buffer = true, desc = "Run current python file" }
)

vim.api.nvim_create_autocmd('BufWritePost', {
    buffer = vim.api.nvim_get_current_buf(),
    desc = 'format python files on save',
    callback = function()
        local file = vim.fn.expand('%:p')
        vim.fn.system({ 'isort', '--quiet', file })
        vim.fn.system({ 'black', '--quiet', file })
        vim.cmd('checktime')
    end,
})
