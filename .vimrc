execute pathogen#infect()

set mouse=a
let mapleader = ","

" Enable mouse in all modes
set ttymouse=xterm2

" Default colorscheme
color tomorrow

" Make Vim more useful
set nocompatible

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Dont wrap
set nowrap

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

set nu

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Don’t add empty newlines at the end of files
set nobinary
set noeol

" let ; be :
nnoremap ; :

" vim zenroom2
nnoremap <silent> <leader>z :Goyo<cr>

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set viminfo=
set nobackup
set nowb
set noswapfile

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Use tabs rather than spaces
set noexpandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set nowrap "Wrap lines

" Respect modeline in files
set modeline
set modelines=4

" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

" Show “invisible” characters
set lcs=tab:\ \ ,trail:·,eol:¬
set list

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
" set scrolloff=9
set scroll=3
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
if &term =~ '256color'
  set t_ut=
endif
hi SpecialKey ctermbg=NONE

filetype plugin indent on
set encoding=utf-8 fileencodings=ucs-bom,utf-8,gbk,gb18030,latin1 termencoding=utf-8

" call plug#begin(expand('<sfile>:h') . '/plugged-deoplete/')
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'roxma/nvim-yarp'
" call plug#end()


" Should fix tabs/space issues
autocmd Filetype html,python,go,php setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype ruby,cucumber,javascript,jade,pug,jsx,scala,vue,css,scss setlocal ts=2 sts=2 sw=2 expandtab

" NerdTree
" let g:NERDTreeHijackNetrw=0
map <Leader>n :NERDTreeToggle<CR>

" ACK
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Dash Awesomness
:nmap <silent> <leader>d <Plug>DashSearch

source $HOME/.vimrc.completion

set colorcolumn=80
hi CursorLine cterm=NONE term=NONE

" Ctrl P
let g:ctrlp_extensions = ['funky']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Trim extra space
autocmd BufWritePre * %s/\s\+$//e

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:jsx_ext_required = 0
:nmap <silent> <leader>d <Plug>DashSearch

set colorcolumn=80
hi CursorLine cterm=NONE term=NONE
let g:ctrlp_extensions = ['funky']

nnoremap <Leader>a :Ack<Space>

let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go', 'javascript', 'ruby', 'python', 'vue'], 'passive_filetypes': [] }
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_vue_checkers = ['eslint']

" Override eslint with local version where necessary.
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'

if matchstr(local_eslint, "^\/\\w") == ''
        let local_eslint = getcwd() . "/" . local_eslint
endif

if executable(local_eslint)
        let g:syntastic_javascript_eslint_exec = local_eslint
        let g:syntastic_vue_eslint_exec = local_eslint
endif


source $HOME/.vimrc.mappings

" hi Cursorline ctermbg=195

" Dash Awesomness
:nmap <silent> <leader>d <Plug>DashSearch

let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
