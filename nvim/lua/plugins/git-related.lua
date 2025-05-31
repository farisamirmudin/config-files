return {
	{
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup({ current_line_blame = true, current_line_blame_opts = { delay = 300 } })
		end
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",      -- required
			"sindrets/diffview.nvim",     -- optional - Diff integration

			"nvim-telescope/telescope.nvim", -- optional
		},
	}
}
