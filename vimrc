set background=dark
" Line number
syntax on
set termguicolors
" set relative numbers, with current line being absolute
set relativenumber number

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

" Don't wrap lines
set nowrap

" Tab settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set smartindent

" copy the file name write away
command CopyFilename let @+ = expand("%")

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
let g:airline#extensions#ale#enabled = 1

" vim-plugs
call plug#begin('~/.vim/plugged')
Plug 'greghensley/vim-gutentags'
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'iCyMind/NeoSolarized'
Plug 'othree/html5.vim'
Plug 'slashmili/alchemist.vim'
Plug 'https://github.com/ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'nathanaelkane/vim-indent-guides'
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
if executable('rg')
  " Use ripgrep over Grep
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l%m

  " Use rg in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

  " rg is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
colorscheme NeoSolarized
