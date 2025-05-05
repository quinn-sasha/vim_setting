call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'

call plug#end()

set tags=tags
set clipboard=unnamed "Copy to the system clipboard

" Mappings
map <C-M> :NERDTreeToggle<CR>

" Varialbe setting
let g:floaterm_keymap_toggle = '<C-,>'
