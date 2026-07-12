vim.keymap.set(
    "n",
    "<leader>r",
    function()
        vim.cmd("write")
        vim.cmd("!python %")
    end,
    { buffer = true, desc = "Run current python file" }
)
