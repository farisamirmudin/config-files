return {
	{
		'echasnovski/mini.nvim',
		config = function()
			require('mini.icons').setup()
			require('mini.surround').setup()
			require('mini.pairs').setup()
			require('mini.comment').setup()
			require('mini.move').setup()
			require('mini.diff').setup()
			require('mini.git').setup()
			require('mini.map').setup()
		end
	},
}
