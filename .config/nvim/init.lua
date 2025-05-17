require('key')
require('opt')

require('configs.lazy')
require('configs.cat')

require('lualine').setup({})
require('nvim-autopairs').setup()
require('mason').setup()
require('mason-lspconfig').setup {
    automatic_enable = false,
    ensure_installed = {
        'rust_analyzer',
        'lua_ls',
        'clangd',
        'texlab',
    }
}
