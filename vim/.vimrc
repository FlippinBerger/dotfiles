call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'liuchengxu/space-vim-dark'
Plug 'fcpg/vim-orbital'
Plug 'xero/sourcerer'
Plug 'morhetz/gruvbox'

call plug#end()

filetype plugin indent on
set smartindent

"space vim dark background
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

set number
set incsearch
set showcmd
set ignorecase
set smartcase
set scrolloff=15
set noswapfile

set shiftwidth=4
set softtabstop=4
set tabstop=4
set wrap!
set expandtab

set laststatus=2
set backspace=indent,eol,start
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"vim session auto stuffs
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

let mapleader = ','

"Show options for ctags
nnoremap <c-]> :tjump <C-R><C-W><cr>

nnoremap <leader>f :GFiles --recurse-submodules<cr>

map <leader>t :FZF<CR>
map <leader>d :NERDTreeToggle<CR>
map <leader>D :NERDTreeFind<CR>
