return {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            { "ms-jpq/coq_nvim", branch = "coq" },
            { "ms-jpq/coq.artifacts", branch = "artifacts" },
            { "ms-jpq/coq.thirdparty", branch = "3p" },
        },
        init = function()
            vim.g.coq_settings = {
                auto_start = true,
            }
        end,
        config = function()
            vim.diagnostic.config({ virtual_text = true })
            local coq = require("coq")
            vim.lsp.config('rust_analyzer', coq.lsp_ensure_capabilities())
            vim.lsp.enable('rust_analyzer')
            -- vim.lsp.config('lua_ls'       , coq.lsp_ensure_capabilities())
            -- vim.lsp.config('clangd'       , coq.lsp_ensure_capabilities())
            -- vim.lsp.config('texlab'       , coq.lsp_ensure_capabilities())
            -- vim.lsp.enable('lua_ls'       )
            -- vim.lsp.enable('clangd'       )
            -- vim.lsp.enable('texlab'       )
        end,
    },
}
