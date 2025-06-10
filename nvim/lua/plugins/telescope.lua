return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			'nvim-telescope/telescope-ui-select.nvim',
			'nvim-telescope/telescope-fzf-native.nvim'
		},
		lazy = false,
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						theme = "ivy",
					},
					live_grep = {
						theme = "ivy",
					},
				},
				extensions = {
					fzf = {}
				}
			})
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
			vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'Telescope marks' })
			vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope keymaps' })

			-- git related
			vim.keymap.set('n', 'fgs', builtin.git_status, { desc = 'Telescope git status' })
			vim.keymap.set('n', 'fc', builtin.git_commits, { desc = 'Telescope git commits' })
			vim.keymap.set('n', 'fgst', builtin.git_stash, { desc = 'Telescope git stash' })

			require("telescope").load_extension("ui-select")
		end
	},
}
