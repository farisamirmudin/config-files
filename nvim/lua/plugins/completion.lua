return {
	{
		'saghen/blink.cmp',
		dependencies = { 'rafamadriz/friendly-snippets' },
		version = '1.*',
		opts = {
			keymap = {
				preset = "default",
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<CR>"] = { "accept", "fallback" },
				["<Esc>"] = { "hide", "fallback" },
				["<PageUp>"] = { "scroll_documentation_up", "fallback" },
				["<PageDown>"] = { "scroll_documentation_down", "fallback" },
			},
			completion = { list = { selection = { preselect = false, auto_insert = false } } },
			appearance = {
				nerd_font_variant = 'mono'
			},
			sources = {
				default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						-- make lazydev completions top priority (see `:h blink.cmp`)
						score_offset = 100,
					},
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" }
		},
		opts_extend = { "sources.default" }
	}
}
