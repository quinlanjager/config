" Line number
syntax on

" set relative numbers, with current line being absolute
set relativenumber number

" toggles line numbers from relative to absolute depending on mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Don't wrap lines
set nowrap

" Tab settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set smartindent

" Directory tree (netrw) settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Autofills the bracket
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i

" Search for highlighted visually selected text
vnoremap // y/<C-R>"<CR>

"Open up NERDtree easy
map <C-n> :NERDTreeToggle<CR>

" Fast switch between windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-l> <C-W>l

" Airline config
let g:airline_theme='minimalist'

" vim-plugs
call plug#begin('~/.vim/plugged')
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'slashmili/alchemist.vim'
Plug 'https://github.com/ervandew/supertab'
Plug 'sbdchd/neoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
call plug#end()

" vim-javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
