return {

	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {

				"rust_analyzer",
				"stylua",
				"clangd",
				"texlab",
				"jdtls",
				"latexindent",
				"clang-format",
			},
			run_on_start = true,
			start_delay = 3000,
			debounce_hours = 5,
		},
	},
}
