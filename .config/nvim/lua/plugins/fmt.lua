return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt"},
			latex = { "latexindent" },
			cpp = { "clang-format" },
			c = { "clang-format" },
		},

		vim.keymap.set({ "n" }, "<leader>p", function()
			require("conform").format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file" }),
	},
}
