return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config('lua_ls', {
            root_dir = function() return vim.loop.cwd() end, 
        })
        vim.diagnostic.config({ virtual_text = true })
        vim.lsp.enable('rust_analyzer')
        vim.lsp.enable('lua_ls'       )
        vim.lsp.enable('clangd'       )
    end,
}   
