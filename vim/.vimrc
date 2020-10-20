" Functional
set autoindent
set colorcolumn=80
set expandtab
set incsearch

" Keybinds
nnoremap <Tab> <C-w>
map ` :NERDTreeToggle<CR>

" Theme
set number
set fillchars+=vert:\▏
syntax on
colorscheme shblah

highlight ColorColumn ctermbg=darkgrey
highlight VertSplit cterm=NONE

" Workman to QWERTY
call feedkeys(":Qwerty!\<CR>")

" Nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
set conceallevel=0
