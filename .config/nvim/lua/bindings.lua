vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set wrap linebreak")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set number relativenumber")

-- creating and closing windows
vim.keymap.set("n", "<leader>ws", ":split<CR>")
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>wc", ":q<CR>")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- navigate windows
vim.keymap.set("n", "<leader>wj", "<C-W><C-J>")
vim.keymap.set("n", "<leader>wk", "<C-W><C-K>")
vim.keymap.set("n", "<leader>wl", "<C-W><C-L>")
vim.keymap.set("n", "<leader>wh", "<C-W><C-H>")

-- resize windows
vim.keymap.set("n", "<Up>", ":resize -2<CR>")
vim.keymap.set("n", "<Down>", ":resize +2<CR>")
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>")
