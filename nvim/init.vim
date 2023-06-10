:set number
:set relativenumber
:set autoindent
:set smartindent
:set tabstop=8
:set shiftwidth=8
:set smarttab
:set softtabstop=4
:set mouse=a
:set cindent
syntax enable
syntax on
set undofile
"set undodir=/tmp
inoremap <C-H> <C-W>
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>


let g:ale_linters = {'c':['betty-style', 'betty-doc', 'gcc'], 'python':['pycodestyle','pydocstyle','flake8']} "add betty to ale linter
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'dense-analysis/ale'          "to install ALE
Plug 'bstevary/betty-in-vim'       "to install the script
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Treesitter for better syntax highlighting
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'https://gitlab.com/HiPhish/pycodestyle.nvim'
"Plug 'nvim-tree/nvim-web-devicons' "Dep for barbar
"Plug 'romgrk/barbar.nvim' "Barbar for tabbar navigation
"Plug 'lukas-reineke/indent-blankline.nvim' "IdentBlankline
"Plug 'nvimdev/dashboard-nvim' "Dashboard nvim

"Plug 'folke/noice.nvim'
"Plug 'MunifTanjim/nui.nvim'
Plug 'Pocco81/auto-save.nvim'


set encoding=UTF-8

call plug#end()

:source ~/.config/nvim/treesitter.vim
":source ~/.config/nvim/noice.vim

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

":colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
