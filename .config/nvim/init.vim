:TSUpdate

set nu
set rnu
set ignorecase
set smartcase
set incsearch
set nohlsearch
set ts=4 sw=4 sts=4
set expandtab
set cursorline
set cursorlineopt=both
set nowrap
set smartcase
set showmode
set smartindent
set ruler
set laststatus=2
set mouse=a
set cc=80
set scrolloff=10

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tc50cal/vim-terminal'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'navarasu/onedark.nvim'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'

call plug#end()

syntax on
let g:onedark_config = { 'style': 'warmer', }
colorscheme onedark

hi ColorColumn guibg=#212124
hi CursorLineNr guibg=#2c2d31
hi LineNr guibg=#202023

let g:mapleader = ' '

nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>d "_d
nnoremap <leader>P "_diw"+P
nnoremap <leader>p "_diwP
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
nnoremap Q "+D
nnoremap q "+d
nnoremap J mzJ`z
nnoremap <C-d> <C-z>zz
nnoremap <C-u> <C-u>zz
nnoremap <F2> :%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<C-f>6<C-w>-F\$
nnoremap <leader>x :!chmod +x %<CR>


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

autocmd VimEnter * NERDTreeToggle | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter="unique_tail_improved"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = '🔒'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.linenr = '☰'

call airline#parts#define('linenr', {
    \ 'raw': '%{g:airline_symbols.linenr}%l',
    \ 'accent': 'bold'})
call airline#parts#define('maxlinenr', {
    \ 'raw': '/%L%{g:airline_symbols.maxlinenr}',
    \ 'accent': 'bold'})
call airline#parts#define('colnr', {
    \ 'raw': ':%v',
    \ 'accent': 'bold'})
if airline#util#winwidth() > 79
    let g:airline_section_z = airline#section#create(['windowswap', 'obsession', 'linenr', 'maxlinenr', 'colnr'])
else
    let g:airline_section_z = airline#section#create(['linenr', 'colnr'])
endif
