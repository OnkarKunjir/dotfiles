return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>' },
        { '<leader><leader>', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>' },
        { '<C-\\>', '<cmd>Telescope lsp_document_symbols<cr>' },
        { '<leader>fg',       '<cmd>Telescope live_grep<cr>' },
        { '<leader>fb',       '<cmd>Telescope buffers<cr>' },
        { '<leader>fh',       '<cmd>Telescope help_tags<cr>' },
    },
}
