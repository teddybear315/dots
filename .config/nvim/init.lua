vim.cmd('source ~/.config/nvim/visual.vim')

vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.colorcolumn = "80"
vim.opt.mouse = "a"

vim.keymap.set('n', '<Leader>f', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<Leader>n', ':NERDTreeToggle<CR>')
vim.keymap.set({'n','v'}, '<Leader>d', [["_d]])
vim.keymap.set({'n','v'}, '<Leader>D', [["_D]])
vim.keymap.set({'n','v'}, '<Leader>p', [["+p]])
vim.keymap.set({'n','v'}, '<Leader>P', [["+P]])
vim.keymap.set({'n','v'}, '<Leader>y', [["+y]])
vim.keymap.set({'n','v'}, '<Leader>Y', [["+Y]])
vim.keymap.set({'n','v'}, 'q', [["+d]])
vim.keymap.set({'n','v'}, 'Q', [["+D]])

vim.keymap.set({'n','v'}, '<F2>', ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gc<C-f>6<C-w>-F\\$")
vim.keymap.set('n', '<Leader>x', ":!chmod +x %<CR>")
vim.keymap.set('n', '<Leader>o', [[o<ESC>]])
vim.keymap.set('n', '<Leader>O', [[o<ESC>]])
vim.keymap.set('n', '<C-d>', [[<C-d>zz]])
vim.keymap.set('n', '<C-d>', [[<C-d>zz]])
vim.keymap.set('n', 'J', [[mzJ`z]])
vim.keymap.set('n', '<Leader>v', ":vne <C-r>%<C-f>6<C-w>-i")

vim.keymap.set('n', '<Leader>c', ":bp<bar>sp<bar>bn<bar>bd<CR>")
vim.keymap.set('n', '<Leader>t', ":bn<CR>")
vim.keymap.set('n', '<Leader>T', ":bp<CR>")

vim.g.NERDTreeDirArrowExpandable = "+"
vim.g.NERDTreeDirArrowCollapsible= "~"
vim.g.airline_powerline_fonts = 1
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#formatter"] = "unique_tail_improved"

