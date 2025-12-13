return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
		config = function()
			require("nvim-autopairs").setup()
			require("nvim-autopairs").add_rule(require("nvim-autopairs.rule")("<", ">"))
		end,
	},
}
