return {
	{
		'Mofiqul/vscode.nvim',
		config = function()
			vim.cmd.colorscheme 'vscode'
		end
	},
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	config = function()
	-- 		vim.cmd.colorscheme "kanagawa"
	-- 	end
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	config = function()
	-- 		vim.cmd.colorscheme "tokyonight"
	-- 	end
	-- },
	{
		'nvim-lualine/lualine.nvim',
		-- dependencies = { 'nvim-tree/nvim-web-devicons' },
		dependencies = { 'echasnovski/mini.icons' },
		opts = { theme = 'vscode' }
	}
}
