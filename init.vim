set background=dark
" Line number
syntax on
" set relative numbers, with current line being absolute
set relativenumber number
" set termguicolors

" toggles line numbers from relative to absolute depending on mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" highlight search results
set hlsearch
" clear search highlighting
nnoremap <silent> <esc> :noh<cr><esc>
"
" Don't wrap lines
set nowrap
" mouse interactions
set mouse=a
" Tab settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set smartindent

" copy the file name write away
command CopyFilename let @+ = expand("%")
"
" Directory tree (netrw) settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Search for highlighted visually selected text
vnoremap // y/<C-R>"<CR>
" keep selections when indenting in visual mode
vnoremap > >gv
vnoremap < <gv
" Map arrow keys
nmap <Up> [e
nmap <Down> ]e
nmap <Left> <<
nmap <Right> >>
vmap <Up> [egv
vmap <Down> ]egv
vmap <Left> <gv
vmap <Right> >gv
imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>

"Open up NERDtree easy
map <C-n> :NERDTreeToggle<CR>

" Fast switch between windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-l> <C-W>l

" vim-plugs
call plug#begin('~/.vim/plugged')
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'tpope/vim-commentary'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'greghensley/vim-gutentags'
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'sheerun/vim-polyglot'
Plug 'iCyMind/NeoSolarized'
Plug 'othree/html5.vim'
Plug 'slashmili/alchemist.vim'
Plug 'https://github.com/ervandew/supertab'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'danro/rename.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-two-firewatch'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'nightsense/snow'
Plug 'rhysd/vim-color-spring-night', {'as': 'spring-night'}
Plug 'morhetz/gruvbox'
call plug#end()
" Neoformat settings
" vim-javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" vim-ale setting
" Asynchronous Lint Engine (ALE)
" Limit linters used for JavaScript.
let g:ale_linters = {
\  'javascript': ['flow', 'eslint'] 
\}

" highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
" highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'x' " could use emoji
let g:ale_sign_warning = 'o' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
" Only need this for solarized/dracula?
 highlight link ALEError ErrorMsg
 highlight link ALEWarning Search
"
" autoformat
" autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.css Neoformat
autocmd BufWritePre *.ex* Neoformat

colorscheme GruvBox 
" fzf settings
nnoremap <silent> <C-p> :Files<CR>
let g:gruvbox_bold = '0'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
" Enable hot reloading
set backupcopy=yes
