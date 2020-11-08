

call plug#begin('~/.vim/plugged')

Plug 'omnisharp/omnisharp-vim'

Plug 'dense-analysis/ale'

Plug 'nickspoons/vim-sharpenup'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'prabirshrestha/asyncomplete.vim'

Plug 'gruvbox-community/gruvbox'

call plug#end()

filetype indent plugin on
if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8

set backspace=indent,eol,start
set nu
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=-1
set tabstop=4

" no auto wrap 
set textwidth=0
set wrapmargin=0
set smartcase

set updatetime=500

set showtabline=2

set belloff=all

set completeopt=menuone,noinsert,noselect,popuphidden
"set completepopup=highlight:menu,border:off

" Colors: {{{
augroup ColorschemePreferences
    autocmd!
    " These preferences clear some gruvbox background colors, allowing transparency
    autocmd ColorScheme * highlight Normal      ctermbg=NONE guibg=NONE
    autocmd ColorScheme * highlight SignColum   ctermbg=NONE guibg=NONE
    autocmd ColorScheme * highlight Todo        ctermbg=NONE guibg=NONE

colorscheme gruvbox
" }}}

" Asyncomplete: {{{
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
" }}}


