

call plug#begin('~/.vim/plugged')

Plug 'omnisharp/omnisharp-vim'

Plug 'dense-analysis/ale'

Plug 'nickspoons/vim-sharpenup'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'prabirshrestha/asyncomplete.vim'

Plug 'gruvbox-community/gruvbox'

Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype indent plugin on
if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8

"let g:coc_global_extensions=['coc-json', 'coc-eslint', 'coc-html', 'coc-java' ]


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

set mouse=a
set hlsearch
set incsearch
set laststatus=2
set signcolumn=yes
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


augroup lightline_integration
    autocmd!
    autocmd User OmniSharpStarted,OmniSharpReady,OmniSharpStopped call lightline#update()
augroup END
