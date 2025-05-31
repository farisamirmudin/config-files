return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		keys = {
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>" },
		},
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				filesystem_watchers = {
					enable = true,
					debounce_delay = 50,
				},
			})
		end,
	}
}
