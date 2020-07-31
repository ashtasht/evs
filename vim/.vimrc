" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'nicwest/vim-workman'
Plug 'junegunn/goyo.vim'
call plug#end()

" Nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
set conceallevel=0

" Workman to QWERTY
call feedkeys(":Qwerty!\<CR>")

" Goyo
let g:goyo_width = 150
"call feedkeys(":Goyo\<CR>")

set autoindent

set number

set colorcolumn=72
highlight ColorColumn ctermbg=darkgrey

syntax on

colorscheme shblah

"set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set smarttab

" Keybinds
nnoremap <Tab> <C-w>
map ` :NERDTreeToggle<CR>
vmap <Tab> :s/^/    /<CR>
