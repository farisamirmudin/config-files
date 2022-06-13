:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/preservim/tagbar'
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" Plug 'preservim/vimux'
Plug 'arzg/vim-colors-xcode'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

set encoding=UTF-8
call plug#end()

lua require('config')
filetype plugin indent on
syntax enable
" let g:vimtex_view_general_viewer = 'mupdf'
let g:vimtex_compiler_method = 'latexmk'
let g:deoplete#enable_at_startup = 1
" call deoplete#custom#var('omni', 'input_patterns', {'tex': g:vimtex#re#deoplete})

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" tagbar
nmap <F8> :TagbarToggle<CR>

" autocompletion
set completeopt=menu,menuone,noselect

" telescope keymaps
let mapleader = ","
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" colorscheme xcode
colorscheme xcodedark

" vimtex compile
nnoremap ., :VimtexCompile<cr>
nnoremap .l :VimtexView<cr>

" navigating split
" Make navigating around splits easier
nnoremap <C-s> <C-w><C-j>
nnoremap <C-w> <C-w><C-k>
nnoremap <C-a> <C-w><C-h>
nnoremap <C-d> <C-w><C-l>

let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='jellybeans'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' '
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty=' '
