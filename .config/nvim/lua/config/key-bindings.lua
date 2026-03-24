-- Disable search highlight when Esc is pressed in normal mode.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Creating splits.
vim.keymap.set('n', '<leader>ws', ':split<CR>')
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>')
vim.keymap.set('n', '<leader>wc', ':q<CR>')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- buffers
vim.keymap.set('n', '<leader>bn', ':bn<CR>')
vim.keymap.set('n', '<leader>bp', ':bp<CR>')
vim.keymap.set('n', '<leader>bd', ':bd<CR>')

-- Navigating splits.
vim.keymap.set('n', '<leader>wj', '<C-W><C-J>')
vim.keymap.set('n', '<leader>wk', '<C-W><C-K>')
vim.keymap.set('n', '<leader>wl', '<C-W><C-L>')
vim.keymap.set('n', '<leader>wh', '<C-W><C-H>')

-- Resize splits.
vim.keymap.set('n', '<Up>', ':resize -2<CR>')
vim.keymap.set('n', '<Down>', ':resize +2<CR>')
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>')

-- Auto cloasing
vim.keymap.set('i', '"', '""<left>')
vim.keymap.set('i', '\'', '\'\'<left>')
vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', '[', '[]<left>')
vim.keymap.set('i', '{', '{}<left>')

-- Formating file
vim.keymap.set('n', '<leader>ff', function() vim.lsp.buf.format() end)


-- lsp related bindings
vim.keymap.set('n', '<leader>le', function()
    vim.diagnostic.open_float({
        focusable = true,
    })
end)
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", vim.lsp.buf.references)


