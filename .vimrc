" Set encoding
set encoding=utf-8

" Use space as the leader key
let mapleader=","

" Basic settings
set number                  " Show line numbers
set relativenumber          " Show relative line numbers
set tabstop=4               " Number of spaces a <Tab> counts for
set shiftwidth=4            " Size of an indent
set expandtab               " Use spaces instead of tabs
set autoindent              " Automatically indent new lines
set smartindent             " Smart autoindenting on new lines
set hlsearch                " Highlight search results
set incsearch               " Incremental search
set wrap                    " Wrap lines
set mouse=a                 " Enable mouse support
set clipboard=unnamedplus   " Use system clipboard
set background=dark         " Set background to dark
syntax on                   " Enable syntax highlighting

" Enable file type plugins
filetype plugin indent on

" Plugin manager configuration
call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'          " Python autocompletion and navigation
Plug 'psf/black', { 'branch': 'main' } " Python code formatter
Plug 'vim-syntastic/syntastic'        " Syntax checking
Plug 'tpope/vim-fugitive'             " Git integration
Plug 'airblade/vim-gitgutter'         " Git diff indicators in the sign column

" Copilot integration
Plug 'github/copilot.vim'

" Other useful plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                " FZF support in Vim
Plug 'tpope/vim-surround'              " Easily modify surrounding characters
Plug 'tpope/vim-commentary'            " Commenting made easy
Plug 'scrooloose/nerdtree'             " File explorer
Plug 'nvim-lua/plenary.nvim'           " Useful lua functions used by lots of plugins

call plug#end()

" Additional configurations for plugins

" NERDTree settings
nmap <leader>n :NERDTreeToggle<CR>

" Copilot settings
" let g:copilot_no_tab_map = v:true   " Disable default tabbing
imap <silent> <C-j> <C-g>u<C-j>   " Navigate down the suggestions
imap <silent> <C-k> <C-g>u<C-k>   " Navigate up the suggestions
