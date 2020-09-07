
" Vim plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTree' }
Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'alpaca-tc/beautify.vim'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-abolish'
Plug 'lervag/vimtex'
Plug 'modille/groovy.vim'
Plug 'jrozner/vim-antlr'
Plug 'hashivim/vim-terraform'
Plug 'rust-lang/rust.vim'

call plug#end()

" Change window shortcuts

map <C-h> h
map <C-j> j
map <C-k> k
map <C-l> l

map <C-Left> h
map <C-Down> j
map <C-Up> k
map <C-Right> l

" Tabulation

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Colorscheme & Font

set background=dark
colorscheme desert
set guioptions-=T
let g:airline_theme='bubblegum'

" Other

set undofile
set mouse=nv

" disable auto comment on new lines
autocmd FileType * setlocal formatoptions-=o

" Jump to last known position when opening a file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" TeX
let g:tex_flavor='latex'

" NERDTree
let NERDTreeIgnore=[ '^build$[[dir]]', '^bin$[[dir]]', '^install_image$[[dir]]', '^target$[[dir]]', '^node$[[dir]]', '^node_modules$[[dir]]', '^bower_components$[[dir]]', '^gradle', '\.gem$', 'Cargo.lock' ]
let NERDTreeSortOrder=[ 'Makefile$', 'pom\.xml$', 'build.gradle', 'settings.gradle', 'package-info\.java$', 'index\.html$', '\.java$', '*' ]

" Coc-java
autocmd FileType java noremap <buffer> <c-f> :call CocAction('format')<cr>:w<cr>
autocmd FileType java noremap <buffer> <c-i> :CocCommand java.action.organizeImports<cr>:w<cr>
autocmd FileType java noremap <buffer> <c-p> :CocList diagnostics<cr>

" Coc-rust
autocmd FileType rust noremap <buffer> <c-f> :call CocAction('format')<cr>:w<cr>
autocmd FileType rust noremap <buffer> <c-p> :CocList diagnostics<cr>

" Beautify
autocmd FileType javascript noremap <buffer> <c-f> :Beautify<cr>
autocmd FileType json noremap <buffer> <c-f> :Beautify<cr>
autocmd FileType html noremap <buffer> <c-f> :Beautify<cr>
autocmd FileType css noremap <buffer> <c-f> :Beautify<cr>
autocmd FileType c noremap <buffer> <c-f> :Beautify<cr>
autocmd FileType cpp noremap <buffer> <c-f> :Beautify<cr>
autocmd FileType h noremap <buffer> <c-f> :Beautify<cr>

" Docker syntax on .dockerfile and .docker files
autocmd BufNewFile,BufRead,BufReadPost *.dockerfile set syntax=dockerfile
autocmd BufNewFile,BufRead,BufReadPost *.docker set syntax=dockerfile

" Groovy syntax on Jenkinsfile files
autocmd BufNewFile,BufRead,BufReadPost Jenkinsfile set syntax=groovy

" UltiSnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mySnippets"]
let g:UltiSnipsExpandTrigger="<tab>"

" Ctags config for Mardown support
let g:tagbar_type_markdown = { 'ctagstype' : 'markdown', 'kinds' : [ 'h:headings', 'l:links', 'i:images' ], "sort" : 0 }

