return {
	"chrisgrieser/nvim-origami",
	event = "VeryLazy",
	opts = {
		useLspFoldsWithTreesitterFallback = {
			enabled = false,
			foldmethodIfNeitherIsAvailable = "indent", ---@type string|fun(bufnr: number): string
		},
		pauseFoldsOnSearch = true,
		foldtext = {
			enabled = true,
			padding = {
				character = " ",
				width = 3, ---@type number|fun(win: number, foldstart: number, currentVirtualTextLength: number): number
				hlgroup = nil,
			},
			lineCount = {
				template = "%d lines", -- `%d` is replaced with the number of folded lines
				hlgroup = "Comment",
			},
			diagnosticsCount = true, -- uses hlgroups and icons from `vim.diagnostic.config().signs`
			gitsignsCount = true, -- requires `gitsigns.nvim`
			disableOnFt = { "snacks_picker_input" }, ---@type string[]
		},
		autoFold = {
			enabled = true,
			kinds = { "comment", "imports" }, ---@type lsp.FoldingRangeKind[]
		},
		foldKeymaps = {
			setup = false, -- modifies `h`, `l`, `^`, and `$`
			closeOnlyOnFirstColumn = false, -- `h` and `^` only fold in the 1st column
			scrollLeftOnCaret = false, -- `^` should scroll left (basically mapped to `0^`)
		},
	},
	init = function()
		--- {{{
		vim.opt.foldmethod = "marker"
		vim.opt.foldmarker = "{{,}}"
		--- }}}
		vim.keymap.set("n", "<leader>n", function()
			require("origami").h()
		end, { desc = "Fold" })
		vim.keymap.set("n", "<leader>o", function()
			require("origami").l()
		end, { desc = "Defold" })
		vim.keymap.set("n", "<leader>i", function()
			require("origami").caret()
		end, { desc = "Fold all" })
		vim.keymap.set("n", "<leader>e", function()
			require("origami").dollar()
		end, { desc = "Defold all" })
	end,
}
