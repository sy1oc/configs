return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
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
		-- -@module "ibl" -- -@type ibl.config opts = {},
        opts = {}
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{ "mason-org/mason.nvim" },
	-- { "williamboman/mason-lspconfig.nvim" },
	-- {
	-- 	"stevearc/conform.nvim",
	-- 	opts = {},
	-- },
	-- { "simrat39/rust-tools.nvim" },
	{
		"sphamba/smear-cursor.nvim",
		opts = {},
	},
}
