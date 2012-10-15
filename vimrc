
" Pathogen Init
call pathogen#infect()

" Setup Leader
let mapleader = ","

syntax on
set ruler
set number
set showmode

filetype plugin on
filetype indent on

" File Type settings
autocmd filetype python set expandtab

" Options
set tabstop=4

" Colors
color desert

" CtrlP Mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Key Mappings
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
