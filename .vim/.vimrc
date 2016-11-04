execute pathogen#infect()

"General Settings
filetype plugin on
filetype indent on
set autoread

let mapleader=","
let g:mapleader=","

set so=7
set wildmenu
set ruler
set cmdheight=2
set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set number
syntax enable
colorscheme Monokai-Refined   
set background=dark

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap





"Block Folding
set foldenable
set foldlevelstart=4
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent


" Key Mappings
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $

nnoremap $ <nop>
nnoremap ^ <nop>

nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>sv :so ~/.vimrc<CR>
nmap <silent> <leader>bv :e ~/.bashrc<CR>
nnoremap <leader><space> :nohlsearch<CR>

nmap <leader>w ;w<CR>

nnoremap ; :
vnoremap ; :

nnoremap <CR> G

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP Settings

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'
