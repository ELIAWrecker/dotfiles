"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" MAPPINGS --------------------------------------------------------------- {{{

" Copy in normal and visual modes
nmap <C-c> "+yy
vmap <C-c> "+y

" Cut in normal and visual modes
nmap <C-x> "+dd
vmap <C-x> "+d


" Paste in normal, visual, and insert modes
nmap <C-v> "+p
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+


" Remap dd in normal mode to delete without copying to a register
nnoremap dd "_dd

" Remap d in visual mode to delete without copying to a register
xnoremap d "_d

" Remap d in operator-pending mode to delete without copying to a register
onoremap d "_d


" }}}




" SEARCHING ------------------------------------------------------------- {{{

" Show matching words during a search.
set showmatch


" While searching though a file incrementally highlight matching characters as you type.
set incsearch


" }}}



" SYNTAX  ---------------------------------------------------------------- {{{
" Add numbers to each line on the left-hand side.
set number

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn on syntax highlighting globally
syntax on

" Disable syntax highlighting for specific file types
autocmd FileType markdown setlocal syntax=off
autocmd FileType txt setlocal syntax=off



" }}}
" BUFFER ---------------------------------------------------------------- {{{


" Enable persistent undo
set undofile
set undodir=~/.vim/backup

" Increase undo levels
set undolevels=100000000

" Plugins (using vim-plug for example)
call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'sjl/gundo.vim'

call plug#end()

" Key mappings to toggle undo tree views
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <F6> :GundoToggle<CR>




" }}}
