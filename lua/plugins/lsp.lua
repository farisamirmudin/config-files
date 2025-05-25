return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'saghen/blink.cmp',
		},
		config = function()
			vim.diagnostic.config({
				virtual_text = true,
				severity_sort = true,
				float = {
					style = 'minimal',
					border = 'rounded',
					header = '',
					prefix = '',
				},
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = '✘',
						[vim.diagnostic.severity.WARN] = '▲',
						[vim.diagnostic.severity.HINT] = '⚑',
						[vim.diagnostic.severity.INFO] = '»',
					},
				},
			})

			local capabilities = require('blink.cmp').get_lsp_capabilities()

			vim.api.nvim_create_autocmd('LspAttach', {
				callback = function(event)
					local opts = { buffer = event.buf }

					vim.keymap.set('n', '<leader><space>', vim.lsp.buf.hover, opts)
					vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
					vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
					vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
					vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
					vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
					vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
					vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
					vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
					vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
				end,
			})

			require('mason').setup({})
			require('mason-lspconfig').setup({
				automatic_enable = true,
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"biome",
					'eslint'
				},
				handlers = {
					function(server_name)
						require('lspconfig')[server_name].setup({ capabilities = capabilities })
					end,

				},
			})
		end,
	}
}
