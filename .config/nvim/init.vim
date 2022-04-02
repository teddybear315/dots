:set nu
:set rnu
:set ignorecase
:set smartcase
:set incsearch
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set nowrap
:set smartcase
:set showmode
:set showmatch
:set hlsearch
:set autoindent
:set ruler
:set laststatus=2
:set mouse=a
syntax on

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tc50cal/vim-terminal'
Plug 'tpope/vim-commentary'

call plug#end()

colorscheme monokai

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="v"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
