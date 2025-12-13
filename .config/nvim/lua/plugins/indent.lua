return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = {
				char = "│",
			},
			scope = {
				enabled = false,
			},
		},
	},

	{
		"nvim-mini/mini.indentscope",
		opts = {
			symbol = "│",
			options = { try_as_border = true },
			mappings = {
				object_scope = "hh",
				object_scope_with_border = "ah",
				goto_top = "[h",
				goto_bottom = "]h",
			},
		},
	},
}
