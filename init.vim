let s:plugin_dir = '~/.config/nvim/plugged'
let s:plug_file = '~/.config/nvim/autload/plug.vim'

call plug#begin(s:plugin_dir)

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': './install' } | Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

let mapleader=" "                    " set our personal modifier key to space

" coc.nvim mappings
nmap <silent> <leader>jd <plug>(coc-definition)
nmap <silent> <F3>       <plug>(coc-references)
nmap <silent> K          :call CocActionAsync('doHover')<CR>

inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
nnoremap <c-t> :tab split<CR>
map ; :set cursorline<CR>:set cursorcolumn<CR>:sleep 100m<CR>:set nocursorline<CR>:set nocursorcolumn<CR>
" Switch between .h and .cpp using F4.
map <F4> :A<CR>
" Switch between .h and _inline.h using F5.
map <F5> :AI<CR>
"-------------------------------------------------------------------------------
" Text formatting
"-------------------------------------------------------------------------------
set encoding=utf-8
set autoindent                       " always set autoindenting on
set expandtab                        " insert spaces when the tab key is pressed
set shiftround                       " use multiple of shiftwidth when indenting
                                     " with '<' and '>'
set shiftwidth=4                     " number of spaces to use for autoindenting
set smarttab                         " insert tabs on the start of a line
                                     " according to shiftwidth, not tabstop
set tabstop=4                        " a tab is four spaces
set wrap                             " wrap overlong lines
set number                           " always display line numbers
map <leader>s :Rg<space>
map <C-p> :Files<CR>

colorscheme OceanicNext

"let g:airline_theme='oceanicnext'

