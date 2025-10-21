return {
	"neovim/nvim-lspconfig",
	lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
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
		vim.lsp.enable("rust_analyzer")
		vim.lsp.enable("stylua")
		vim.lsp.enable("clangd")
		vim.lsp.enable("texlab")
		vim.lsp.enable("jdtls")
	end,
}
