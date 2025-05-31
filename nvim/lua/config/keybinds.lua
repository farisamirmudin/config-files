vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>tp', function()
	local file = vim.fn.expand('%:p')
	vim.system({ 'tmux', 'split-window', '-h', 'nvim', file })
end, { desc = 'Open current file in vertical tmux split' })
