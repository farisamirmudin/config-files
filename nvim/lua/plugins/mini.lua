return {
	{
		'echasnovski/mini.nvim',
		config = function()
			require('mini.icons').setup()
			require('mini.surround').setup()
			require('mini.pairs').setup()
			require('mini.comment').setup()
			require('mini.move').setup()
			require('mini.git').setup()

			local map = require('mini.map')
			map.setup({
				integrations = {
					map.gen_integration.diagnostic(),
					map.gen_integration.gitsigns(),
				},
			})
			vim.api.nvim_create_autocmd('BufEnter', {
				callback = function()
					map.open()
				end,
			})
			-- require('mini.sessions').setup({
			-- 	autoread = true,
			-- 	autowrite = true,
			-- 	directory = vim.fn.stdpath('data') .. '/session/',
			-- })
			-- local write_session = function()
			-- 	local session_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
			-- 	MiniSessions.write(session_name)
			-- end
			-- vim.keymap.set('n', '<leader>ws', write_session)
		end
	},
}
