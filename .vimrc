execute pathogen#infect()

"General Settings
filetype plugin on
filetype indent on
set autoread
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0

let mapleader=","
let g:mapleader=","

set so=7
set wildmenu
set ruler
set cmdheight=1
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
set background=dark
colorscheme solarized

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
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

let g:NERDTreeChDirMode       = 2
let g:jsx_ext_required = 0
set laststatus=2

let g:netrw_browse_split = 4
let g:netrw_altv1 = 1


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode= 'w'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
