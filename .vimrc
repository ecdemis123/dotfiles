execute pathogen#infect()

filetype plugin indent on
syntax on
set showcmd

let g:CommandTAcceptSelectionMap = '<C-v>'
let g:CommandTAcceptSelectionVSplitMap='<CR>'
let NERDTreeShowHidden=1

let g:go_fmt_command = "goimports"
set omnifunc=syntaxcomplete#Complete

let g:tsuquyomi_single_quote_import=1
let g:tsuquyomi_javascript_support=1
let g:tsuquyomi_shortest_import_path=1

colorscheme triplejelly

set number
set cursorline

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard=unnamed
set backspace=indent,eol,start

set shell=/bin/sh

map nt :NERDTreeToggle<CR>
map ntf :NERDTreeFind<CR>
map fws :FixWhitespace<CR>
map _d "_d
map wf :FixWhitespace<CR> <bar> :w<CR>
map tsu :TsuImport<CR> <bar> :w<CR>

autocmd FileType go setlocal shiftwidth=4 tabstop=4
