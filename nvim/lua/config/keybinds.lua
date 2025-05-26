vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>cd', vim.cmd.Ex)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

-- New tab
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })

-- Next tab
vim.keymap.set('n', '<leader>tl', ':tabnext<CR>', { noremap = true, silent = true }) -- l = right

-- Previous tab
vim.keymap.set('n', '<leader>th', ':tabprevious<CR>', { noremap = true, silent = true }) -- h = left

-- Close current tab
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })

-- Split shortcuts
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true }) -- vertical
vim.keymap.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })  -- horizontal

-- Resize splits with Alt + Arrow keys
vim.keymap.set('n', '<M-Right>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Left>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Up>', ':resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Down>', ':resize +2<CR>', { noremap = true, silent = true })

-- Move between splits/panes
vim.keymap.set('n', '<M-h>', '<C-w>h', { noremap = true, silent = true }) -- move to left pane
vim.keymap.set('n', '<M-j>', '<C-w>j', { noremap = true, silent = true }) -- move to below pane
vim.keymap.set('n', '<M-k>', '<C-w>k', { noremap = true, silent = true }) -- move to above pane
vim.keymap.set('n', '<M-l>', '<C-w>l', { noremap = true, silent = true }) -- move to right pane
