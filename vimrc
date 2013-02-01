" Pathogen Init
call pathogen#infect()

" Setup Leader
let mapleader = ","

" Set 256 colors
set t_Co=256

" Statusline
set laststatus=2
set statusline=%{fugitive#statusline()}

syntax on
set ruler
set number
set showmode

filetype plugin on
filetype indent on

" File Type settings
autocmd filetype python set expandtab
autocmd filetype html set ft=htmldjango.html.javascript.javascript-jquery " for SnipMate

" Colors
color 256-jungle

" STOP USING ESC
inoremap jk <esc>
inoremap kj <esc>

" CtrlP Mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Key Mappings
""""""""""""""""""""""""""""""""""""""""""
" Fast saving
nmap <leader>w :w!<cr>

" Split Window Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remove arrow key mappings
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

hi TabLine      ctermfg=White ctermbg=Blue cterm=none
hi TabLineSel   ctermfg=Black ctermbg=White cterm=bold
hi TabLineFill  ctermfg=White ctermbg=Blue cterm=none

" Python-Mode Settings
let g:pymode_folding=0

" Python-Mode Keybindings
" map <C-Space> :call RopeCompletions()<CR>
" imap <C-space> <C-R>=RopeCodeAssistInsertMode()<CR>
map <C-b> :call RopeGotoDefinition()<CR>
