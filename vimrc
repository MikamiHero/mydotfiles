set nocompatible              " be iMproved, required
filetype off                  " required

set noerrorbells
set belloff=all
set number
set mouse=a
set hlsearch
nnoremap <CR> :noh<CR>

set tabstop=4
set shiftwidth=4
set expandtab

if has('win32')
    set termguicolors
    set shellslash
    set t_ut=""
    set rtp+=~/vimfiles/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'whatyouhide/vim-gotham'

if !has('win32')
    Plugin 'mileszs/ack.vim'
endif


call vundle#end()            " required
filetype plugin indent on    " required

" NERDTreee
let NERDTreeShowHidden=1
map <TAB> :NERDTreeToggle<CR>
set timeoutlen=10 ttimeoutlen=0

autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='gotham256'
let g:gotham_airline_emphasised_insert = 0


" Colorscheme
colorscheme gotham256
syntax enable
