call plug#begin('~/.local/share/nvim/plugged')
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lumiliet/vim-twig'
Plug 'scrooloose/nerdtree'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'othree/yajs.vim', { 'for' : 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/jspc.vim'
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 
  \ 'do': 'npm install', 
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] } 
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'itchyny/lightline.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'SirVer/Ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'airblade/vim-gitgutter'
Plug 'amadeus/vim-mjml'
Plug 'shawncplus/phpcomplete.vim'
Plug 'dsawardekar/wordpress.vim'
Plug 'miyakogi/seiya.vim'
call plug#end()

"General Settings
set nocompatible
filetype plugin indent on
set autoread
autocmd * setlocal formatoptions-=c formatoptions-=r formatoptions-=0
set t_Co=256
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm
if (has("termguicolors"))
  set termguicolors
endif



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
"set foldenable
"set foldlevelstart=2
"set foldnestmax=10
"set foldmethod=indent

"Color Settings
set hid
syntax enable
set number
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
set background=dark
colorscheme gruvbox

"Keybind Settings
let mapleader=","
imap jk <Esc>
nnoremap <space> za
nnoremap <silent> <leader>ev :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>sv :so ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader><space> :nohlsearch<CR>
nnoremap <silent> <leader>t mzgg=G`z
nnoremap <silent> <leader>wa :wa<CR>
nnoremap <silent> <leader>w :w<CR>
nnoremap j gj
nnoremap k gk
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <NL> i<CR><ESC>

"Plugin Settings
let g:jsx_ext_required=0

let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \}
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_save = 1
nmap <leader>d <Plug>(ale_fix)

let g:used_javascript_libs = 'react, jquery'

let g:closetag_filenames = "*.html, *.php, *.js, *.mjml, *.ejs"

let g:deoplete#enable_at_startup = 1
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

let g:tern#filetypes = [
      \ 'jsx',
      \ 'javascript.jsx',
      \ 'vue',
      \ 'ejs',
      \]
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

let vim_markdown_preview_github=1

" Vim-Fugitive Keybindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gb :Git branch<space>
nnoremap <leader>gps :Dispatch! git push <CR>
nnoremap <leader>gpl :Dispatch! git pull <CR>
nnoremap <leader>go :Git checkout<space>

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
