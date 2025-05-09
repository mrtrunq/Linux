" vim_options
syntax on
set number
set tabstop=4
set incsearch
set ignorecase
set nohlsearch
set noshowmode
set cursorline
set smartindent
set shiftwidth=4
let mapleader=' '
set encoding=utf-8
set clipboard=unnamed
let g:loaded_matchparen=1
filetype plugin indent on
let $TERM="xterm-256color"
" ------------------------------
" vim_keymaps
nnoremap j gjzz
vnoremap j gjzz
nnoremap k gkzz
vnoremap k gkzz

nnoremap J 4gjzz
vnoremap J 4gjzz
nnoremap K 4gkzz
vnoremap K 4gkzz

nnoremap H 4h
vnoremap H 4h
nnoremap L 4l
vnoremap L 4l

nnoremap X d^i
nnoremap G Gzz
nnoremap U <C-r>

nnoremap n nzz
nnoremap N Nzz
" ······························
nnoremap <C-d> yyp
inoremap <C-d> <Esc>yyp

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

nnoremap <A-Up> :m .-2<CR>
nnoremap <A-Down> :m .+1<CR>
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

nnoremap <leader>j gT
nnoremap <leader>k gt
nnoremap <leader>q :q<CR>:q<CR>
" ------------------------------
" vim_plugins
let g:codedark_transparent=1
set t_Co=256
set t_ut=
colorscheme codedark
highlight CursorLine ctermbg=238 guibg=#424450
highlight CursorLineNr ctermbg=238 guibg=#424450
" ······························
let NERDTreeShowHidden=1
nnoremap <F1> :NERDTreeToggle<CR>
let g:nerdtree_sync_cursorline = 1
" ······························
nnoremap <C-p> :Files<CR>
" ······························
vnoremap <C-_> <Plug>Commentary
nnoremap <C-_> <Plug>CommentaryLine
" ······························
nnoremap gb <C-o>
nmap <F2> <Plug>(coc-rename)
inoremap <expr> <C-y> coc#refresh()
nnoremap <nowait> gd <Plug>(coc-definition)
nnoremap <nowait> gr <Plug>(coc-references)
nnoremap <nowait> gi <Plug>(coc-implementation)
nnoremap <C-k> :call CocActionAsync('doHover')<CR>
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : ""
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : ""
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "<Tab>"
" ······························
let g:multi_cursor_select_all_word_key = '<C-l>'

