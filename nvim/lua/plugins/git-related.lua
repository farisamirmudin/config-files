return {
	{
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup({ current_line_blame = true, current_line_blame_opts = { delay = 300 } })
			vim.keymap.set('n', '<leader>hp', ":Gitsigns preview_hunk<CR>")
			vim.keymap.set('n', '<leader>hi', ":Gitsigns preview_hunk_inline<CR>")
		end
	}
}
