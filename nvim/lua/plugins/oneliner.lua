return {
	{
		'numToStr/Comment.nvim',
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,

		dependencies = {
			"saghen/blink.cmp"
		},
		config = function()
			require('markview').setup({
				preview = { icon_provider = "devicons", enable = false }
			})
			vim.keymap.set('n', "<leader>sp", "<esc>:Markview Toggle<cr>")
		end
	},
}
