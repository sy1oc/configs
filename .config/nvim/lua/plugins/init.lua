return {

	{ "folke/which-key.nvim", event = "VeryLazy", opts = {} },


	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		opts = {},
	},
}
