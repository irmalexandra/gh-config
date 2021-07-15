set encoding=utf-8
set fileformat=unix
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

let g:mapleader = ' '

call plug#begin('~/.vim/autoload')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'suan/vim-instant-markdown'

call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
	set termguicolors
endif

    lua require 'colorizer'.setup()
" InstantMarkdown"
let g:instant_markdown_autostart = 1
nmap <C-m> <Plug>InstantMarkdownPreview
vmap <C-m> <Plug>InstantMarkdownPreview<CR>gv

" NERDCommenter
nmap <C-z> <Plug>NERDCommenterToggle
vmap <C-z> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 <Plug>AirlineSelectPrevTab
nmap <leader>2 <Plug>AirlineSelectNextTab
nmap <C-q> :bd<CR>
