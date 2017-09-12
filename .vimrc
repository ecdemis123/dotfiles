execute pathogen#infect()

filetype plugin indent on
syntax on
set showcmd

let g:CommandTAcceptSelectionMap = '<C-v>'
let g:CommandTAcceptSelectionVSplitMap='<CR>'

colorscheme triplejelly

set number
set cursorline

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard=unnamedplus

set shell=/bin/sh

map nt :NERDTreeToggle<CR>
map ntf :NERDTreeFind<CR>
map fws :FixWhitespace<CR>
map _d "_d
map wf :FixWhitespace<CR> <bar> :w<CR>