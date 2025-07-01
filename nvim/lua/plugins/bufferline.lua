return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'echasnovski/mini.icons',
		config = function()
			require("bufferline").setup()
		end
	}
}
