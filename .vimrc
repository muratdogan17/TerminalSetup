execute pathogen#infect()

"General Settings
filetype plugin indent on
set autoread
autocmd * setlocal formatoptions-=c formatoptions-=r formatoptions-=0
set t_Co=256
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm



set backspace=eol,start,indent

" Search Settings
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set showmatch
set mat=5

"Bell Settings
set noerrorbells
set novisualbell
set t_vb=

"File Settings
set encoding=utf8
set fileformats=unix,dos,mac
set nobackup
set nowritebackup
set noswapfile

"Tab Settings
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set linebreak
set autoindent
set smartindent
set wrap

"Fold Settings
set foldenable
set foldlevelstart=2
set foldnestmax=10
set foldmethod=indent

"Color Settings
set hid
syntax enable
set number
set background=dark
let g:seiya_auto_enable=1
colorscheme molokai

"Keybind Settings
let mapleader=","
imap jk <Esc>
nnoremap <space> za
nnoremap <silent> <leader>ev :e ~/.vimrc<CR>
nnoremap <silent> <leader>sv :so ~/.vimrc<CR>
nnoremap <silent> <leader><space> :nohlsearch<CR>
nnoremap <silent> <leader>t mzgg=G`z
nnoremap <silent> <leader>wa :wa<CR>
nnoremap <silent> <leader>w :w<CR>
nnoremap j gj
nnoremap k gk
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

"Plugin Settings
let g:jsx_ext_required=0

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:crlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:crtlp_use_caching = 0
endif
set wildignore+=*/node_modules/*

let g:ctrlp_working_path='a' 

let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \}
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1

let g:multi_cursor_start_key='<F5>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'

"Word Count
function! WordCount()
    let s:old_status=v:statusmsg
    let position=getpos(".")
    exe ":silent normal g\<c-g>"
    let stat=v:statusmsg
    let s:word_count=0
    if stat != '--No lines in buffer--'
        let s:word_count=str2nr(split(v:statusmsg)[11])
        let v:statusmsg=s:old_status
    end
    call setpos('.', position)
    return s:word_count
endfunction

"Status Line Settings
set laststatus=2
set statusline=%F%m%r%h%w%=
au BufRead,BufNewFile *.md setlocal statusline+=\ WordCount:%{WordCount()}
set statusline+=\ Column:%c%V\ [line\ %l\/%L]
set statusline+=\ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]
au BufRead,BufNewFile *.md setlocal textwidth=80
