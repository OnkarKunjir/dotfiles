require('config/configs')
require('config/key-bindings')
require('config/lazy')

require('lazy').setup({
  spec = {
    { import = 'plugins' },
  },
})

require('config/lsp')
