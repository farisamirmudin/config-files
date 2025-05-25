return {
    {
	"nvim-treesitter/nvim-treesitter", 
	branch = 'master', 
	lazy = false, 
	build = ":TSUpdate",
	config = function()
	    local config = require("nvim-treesitter.configs")
	    config.setup({
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
		    'lua',
		    'tsx',
		    'typescript',
		    'javascript',
		    'bash',
		    'dockerfile',
		    'kotlin'
		},
		auto_install = false
	    })
	end
    }
}
