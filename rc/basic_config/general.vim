scriptencoding utf-8

" encoding {{{
set inccommand=nosplit
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" 更好的unix兼容性
set viewoptions=folds,cursor,unix,slash
set viewoptions-=options
set fileformat=unix
set fileformats=unix,dos,mac
set sessionoptions+=globals
" }}} encoding

" 色彩支持{{{
set termguicolors
set t_Co=256
" }}}色彩支持

 "required!{{{
filetype plugin indent on 
 "}}}required!

" 响应外部外部文件更改{{{
set autoread
" }}}响应外部外部文件更改

" tabs {{{
set expandtab   " 制表符换成空格
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent " 缩进模式
" }}} tabs

" 窗口滚动 {{{
set winminheight=0
set scrolloff=4
set splitright
" }}} 窗口滚动

"基本{{{
" 允许光标超出最后一个字符
set virtualedit=onemore
set shada=!,'100,<50,s10
set relativenumber
set number
set noswapfile
set confirm
"}}}基本

" 高亮当前行和列{{{
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
"}}}高亮当前行和列

" mouse {{{
set mouse+=a
set mousehide
" }}} mouse

" 关闭错误响铃🔔️ {{{
set shortmess+=aoOtTIc
set noerrorbells
set novisualbell
set t_vb=
" }}} 关闭错误响铃🔔️
"
" tab补全菜单选项{{{
set pumblend=20
set wildoptions=pum
" }}}tab补全菜单选项

" buffer {{{
set splitbelow splitright
set guioptions-=e
set showtabline=2
set hidden
" }}} buffer

" wildmenu {{{
set wildmenu
set wildignore+=*.o,*~,*.pyc,*.class,*/tmp/*,*.so,*.swp,*.zip
set completeopt=longest,menu
set completeopt-=preview
" }}} wildmenu

" 状态栏 {{{
set noshowmode
"set noshowcmd
set showcmd
set laststatus=2
" }}} 状态栏

" match {{{
filetype indent on
set showmatch
set smartcase
set ignorecase
" }}} match

" spaceline {{{
set list
set listchars=tab:›\ ,trail:-,extends:#,nbsp:.
" }}} spaceline

" syntax {{{
set synmaxcol=200
" }}} syntax

" iskeyword
set iskeyword+=-

" updatetime {{{
set updatetime=300
" }}} updatetime

" substitution {{{
" set inccommand=split
" substitution }}}
