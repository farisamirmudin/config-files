return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		keys = {
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>" },
		},
		lazy = false,
		dependencies = {
			'echasnovski/mini.icons',
		},
		config = function()
			require("nvim-tree").setup({
				update_focused_file = { enable = true },
				filesystem_watchers = {
					enable = true,
					debounce_delay = 50,
				},
			})
		end,
	}
}
