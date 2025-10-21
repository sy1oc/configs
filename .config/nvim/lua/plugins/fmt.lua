return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt", lsp_format = "rust_analyzer" },
			latex = { "latexindent" },
		},

		vim.keymap. set({ "n" }, "<leader>p", function()
			require("conform").format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file" }),
	},
}
