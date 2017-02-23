" Infect with pathogen
execute pathogen#infect()

"General Settings
filetype plugin on
filetype indent on
set autoread
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0

set so=7

set path+=**
set wildmenu
set wildignore+=*/node_modules/*

set ruler
set cmdheight=1
set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
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
color solarized
set cursorline
hi cursorline cterm=none term=none
highlight CursorLine guibg=#303000 ctermbg=234

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

"Block folding
set foldenable
set foldlevelstart=4
set foldnestmax=10
set foldmethod=indent

"Keybindings
let mapleader=','
let g:mapleader=','

nnoremap <space> za
nnoremap <silent> <leader>ev :e ~/.vimrc<CR>
nnoremap <silent> <leader>rv :so ~/.vimrc<CR>
nnoremap <silent> <leader><space> :nohlsearch<CR>
nnoremap <silent> <leader>t mzgg=G`z
nnoremap <silent> <leader>f :find<space>
nnoremap <silent> <leader>sf :sfind<space>
nnoremap <silent> <leader>vf :vert sfind<space>
nnoremap <silent> <leader>wa :wa<CR>
nnoremap <silent> <leader>w :w<CR>

nnoremap <silent> <leader>lp :read ~/.vim/templates/theloop.php<CR>


" Plugin Options
" JSX Syntax
let g:jsx_ext_required=0

"Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntatstic_check_on_wq = 0
let g:syntatstic_javascript_checkers = ['eslint']

"NerdTree
map <silent><C-n> :NERDTreeToggle<CR>
