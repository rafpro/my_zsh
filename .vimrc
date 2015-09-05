" Initial settings
scriptencoding utf-8
set encoding=utf-8  " sets default charset to utf-8 
set guifont=Sauce\ Code\ Powerline\ :h13
set ffs=unix,mac,dos

set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Tabular'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'altercation/solarized'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'
Plugin 'effkay/argonaut.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}


call vundle#end()


" ============================
" Setting Editor
" ============================
set number 		"sets line number
syntax on 		"sets syntax coloring
set laststatus=2 	"shows status bar at the bottom
set t_Co=256 		"256 color support
set noshowmode		" always shows what mode we are on now
set nowrap		" don't wrap lines
set tabstop=4		" tabstop position
set smarttab
set tags=tags
set softtabstop=4 	" when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab		" expand tabs by default (overloadable per file type later)
set shiftwidth=4	" number of spaces to use for autoindenting
set shiftround		" use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set autoindent		" always set autoindenting on
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching 
set smartcase		" ignore case if search pattern is all lowercase
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell		" don't bell
set noerrorbells	" don't bell
set autowrite 		" save on buffer switch
set mouse=a
set go=L            " removes left side scrollbar
set showcmd         " Shows (partial) command in the status line


" no backup or swap files
set nobackup
set nowritebackup
set noswapfile
set noundofile

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" ============================
" Mapping Things
" ============================
let mapleader=","
let g:mapleader=","

" fast saves
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>


" down is really the next line
nnoremap j gj
nnoremap k gk

" easy escaping
imap jj <ESC>

" auto changing directory to current file <leader>cd
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" easier window travelling
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" window resizing
nmap 05 :vertical resize +5<CR>
nmap 25 :vertical resize 40<CR>
nmap 50 <C-w>=
nmap 75 :vertical resize 120<CR>
nmap sp :rightbelow sp<CR>          " split bellow
nmap vs :vsplit<CR>                 " split vertically

" quickly go forward and backward of buffer
nmap :bp :BufSurfBack<CR>
nmap :bn :BufSurfForward<CR>

vmap <C-c> "*y
imap <C-s> <esc>:w!<CR>i

" select all
nmap <C-a> ggVG



" tab control
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-S-tab> <ESC>:tabprevious<CR>i
inoremap <C-tab> <ESC>:tabnext<CR>i
inoremap <C-t> <ESC>:tabnew<CR>i

" CtrlP Mapping
let g:crtlp_dotfiles = 1
map <D-p> :CtrlP<CR>
map <C-r> :CtrlPBufTag<CR>
nnoremap <leader>. :CtrlPTag<CR>
nnoremap <silent> <leader>b :TagbarToggle<CR>




" Editor GUI options
set background=dark 	" background theme support
"colo 256-jungle
"colo dracula
colo solarized

let g:airline_theme= "dark"
let g:airline_powerline_fonts=1
let g:Powerline_sysbols='fancy'



" No Git authentican verification
let $GIT_SSL_NO_VERIFY = 'true'
