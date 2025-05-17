return {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
	{
		"neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
		lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
		dependencies = {
			-- main one
			{ "ms-jpq/coq_nvim", branch = "coq" },

			-- 9000+ Snippets
			{ "ms-jpq/coq.artifacts", branch = "artifacts" },

			-- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
			-- Need to **configure separately**
			{ "ms-jpq/coq.thirdparty", branch = "3p" },
			-- - shell repl
			-- - nvim lua api
			-- - scientific calculator
			-- - comment banner
			-- - etc
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		init = function()
			vim.g.coq_settings = {
				auto_start = true, -- if you want to start COQ at startup
				-- Your COQ settings here
			}
		end,
		config = function()
			vim.diagnostic.config({ virtual_text = true })
			local coq = require("coq")
            vim.lsp.config('rust_analyzer', coq.lsp_ensure_capabilities())
            vim.lsp.config('lua_ls'       , coq.lsp_ensure_capabilities())
            vim.lsp.config('clangd'       , coq.lsp_ensure_capabilities())
            vim.lsp.config('texlab'       , coq.lsp_ensure_capabilities())
            vim.lsp.enable('rust_analyzer')
            vim.lsp.enable('lua_ls'       )
            vim.lsp.enable('clangd'       )
            vim.lsp.enable('texlab'       )
		end,
	},
}
