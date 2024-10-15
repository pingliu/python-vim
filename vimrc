set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-python/python-syntax'
Plugin 'Shougo/neocomplete.vim'
Plugin 'psf/black'
Plugin 'dense-analysis/ale'
Plugin 'majutsushi/tagbar.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'wincent/command-t'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'solarnz/thrift.vim'
Plugin 'mgedmin/python-imports.vim'
Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" 代码高亮用的
syntax enable
filetype plugin on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
" 启用 Python 语法高亮
let g:python_highlight_all = 1
" 启动自动import
let g:autoimport_enabled = 1
" 自动补全自动启动
let g:neocomplete#enable_at_startup = 1
" 配置 ALE
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\}
let g:ale_fixers = {
\   'python': ['black'],
\}
let g:ale_fix_on_save = 1

" 颜色配置
colorscheme molokai

" 标签分析
let g:tagbar_type_python = {
    \ 'ctagstype' : 'python',
    \ 'kinds'     : [
        \ 'i:interfaces',
        \ 'c:classes',
        \ 'f:functions',
        \ 'm:methods',
        \ 'v:variables'
    \ ],
    \ 'sro'       : '.',
    \ 'kind2scope' : {
        \ 'g' : 'generator',
        \ 't' : 'template',
        \ 'c' : 'class'
    \ },
    \ 'scope2kind' : {
        \ 'generator' : 'g',
        \ 'template'  : 't',
        \ 'class'     : 'c'
    \ }
\ }

" 标签映射
execute "set <M-i>=\ei"
execute "set <M-o>=\eo"
execute "set <M-p>=\ep"
execute "set <M-u>=\eu"
execute "set <M-l>=\el"
execute "set <M-n>=\en"
execute "set <M-y>=\ey"
execute "set <M-c>=\ec"

nmap <M-p> :TagbarToggle<CR>
imap <M-p> <esc>:TagbarToggle<CR>i
nmap <M-u> :NERDTreeToggle<CR>
imap <M-u> <esc>:NERDTreeToggle<CR>
nmap <C-c> :q<CR>
nmap <M-o> :tabn<CR>
imap <M-o> <esc>:tabn<CR>
nmap <M-i> :tabp<CR>
imap <M-i> <esc>:tabp<CR>
nmap <M-l> :w<CR>:GoLint<CR>
nmap <M-n> :GoDef<CR>
nmap <C-z> :undo<CR>
nmap <M-y> :GoErrCheck<CR>
nmap <C-s> :w<CR>
imap <C-s> <esc>:w<CR>
imap <M-c> <esc>:pc<CR>
nmap <M-c> :pc<CR>

set backspace=indent,eol,start " 让backspace能正常工作的配置

" 这是对PowerLine的设置
set encoding=utf-8
set laststatus=2
let g:Powerline_symbols='unicode'

" tab设置
set ts=4
set expandtab

" 解决esc延迟问题
set timeoutlen=1000 ttimeoutlen=0

"高亮显示搜索匹配到的字符串
set hlsearch
 
"在搜索模式下，随着搜索字符的逐个输入，实时进行字符串匹配，并对首个匹配到的字符串高亮显示
set incsearch

" 解决Tmux下 背景颜色不一致的问题
set t_ut=

" tab 也使用airline
let g:airline#extensions#tabline#enabled = 1

" 使用Powerline字体
let g:airline_powerline_fonts = 1
