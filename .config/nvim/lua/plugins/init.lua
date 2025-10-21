return {
	{	"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					{
						"filename",
						path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
					},
				},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			options = {
				theme = "catppuccin",
				component_separators = { left = "│", right = "│" },
				section_separators = { left = "", right = "" },
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		main = "ibl",
		opts = {},
	},
	{ "windwp/nvim-autopairs", event = "InsertEnter" },
	{ "sphamba/smear-cursor.nvim", opts = {} },
	{ "eandrju/cellular-automaton.nvim" },
	{ "zeioth/garbage-day.nvim", dependencies = "neovim/nvim-lspconfig", event = "VeryLazy", opts = {} },
	{ "mason-org/mason.nvim", opts = {} },
	--{
	--	"rcarriga/nvim-dap-ui",
	--	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
	--},
	{ "nvim-tree/nvim-tree.lua", opts = {} },
	{ "akinsho/bufferline.nvim", opts = {} },
}
