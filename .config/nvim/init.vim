call plug#begin('~/.config/nvim/plugged')
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/goyo.vim'
	Plug 'ap/vim-css-color'
	Plug 'arcticicestudio/nord-vim'
	Plug 'preservim/nerdtree'
	"Plug 'itchyny/lightline.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
  Plug 'joshdick/onedark.vim'
call plug#end()

set wrap linebreak
set showbreak=>>
set clipboard+=unnamedplus
set nocompatible
syntax enable
filetype plugin indent on 
let mapleader=" "

" theme
set cursorline
set background=dark
set termguicolors
colorscheme nord
" make background transperant.
hi Normal guibg=NONE ctermbg=NONE 

let g:airline_powerline_fonts = 1
let g:airline_theme='nord'

set t_Co=256
let g:rehash256 = 1

" let g:lightline = {
"       \ 'colorscheme': 'nord',
"       \ }

set mouse=a
set confirm
set laststatus=2
set number relativenumber 
set wildmenu

" shorcut keys to change splits
set splitbelow splitright
nnoremap <leader>wj <C-W><C-J>
nnoremap <leader>wk <C-W><C-K>
nnoremap <leader>wl <C-W><C-L>
nnoremap <leader>wh <C-W><C-H>

" reating new splits
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wc :q<CR>

" resize splits
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" change tabs
nnoremap <C-Left> gt<CR>
nnoremap <C-Right> gT<CR>

" searching 
set incsearch
set hlsearch
nnoremap <leader>h :set hlsearch!<CR>


"folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <leader><space> za
set foldmethod=indent

" tab width
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Nerd tree
nnoremap <leader>n :NERDTreeToggle<CR>

" goyo plugin
nnoremap <leader>g :Goyo<CR>

" cpp skleton
nnoremap <leader>cpp i#include<iostream><CR>#define forn(a,b) for(int i = a; i<b; i++)<CR>using namespace std;<CR><CR>int main(){<CR>cout<<"hello world";<CR>return 0;<CR>}<ESC>

" auto complete pairs
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
