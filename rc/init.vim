
" 全局映射{{{

" 前缀键映射
let g:mapleader="\<Space>"
let g:maplocalleader=';'

" 禁用neovim默认按键映射
nnoremap <Space>  <Nop>
xnoremap <Space>  <Nop>
nnoremap ,        <Nop>
xnoremap ,        <Nop>
nnoremap ;        <Nop>
xnoremap ;        <Nop>
nnoremap F        <Nop>
" }}}全局映射

" 语言模块配置{{{
" 禁止neovim启动时进行语言模块检查
let g:python3_host_skip_check = 1
let g:ruby_host_skip_check = 1
let g:node_host_skip_check = 1
"let g:python_host_skip_check = 1
" 显式的指定语言模块位置，启动速度更快
let g:python3_host_prog  = '/usr/local/bin/python3'
"let g:python_host_prog  = '/usr/local/bin/python'
" 禁用对python2的支持
let g:loaded_python_provider = 1 
" ruby支持
let g:ruby_host_prog = '/Users/lijia/.gem/ruby/2.6.0/bin/neovim-ruby-host'
" node.js支持
let g:node_host_prog = '/usr/local/lib/node_modules/neovim/bin/cli.js'
" }}}语言模块配置
"
" 自动定位到最后编辑的位置{{{
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" }}}自动定位到最后编辑的位置

" 光标闪烁✨️{{{
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175
" }}}光标闪烁✨️

" 状态栏设置{{{
set statusline=\ 🌈️\-\%n-\ \🌺\🌺\%F\[%M]\🌺\ 💐\%y\💐\ \%r\ \
            \%{NearestMethodOrFunction()}
            \%{gutentags#statusline()}
            \\%=\ \%L\|\%p\%%\🌹\%{&ff}\🌼\[%l:%c]\🌹
" }}}状态栏设置

augroup UserNeo
  autocmd!
" delete the buffer when exit terminal
  autocmd TermClose * bd!
" for autoread
  autocmd FocusGained * :checktime
augroup END

" 禁用neovim自带插件{{{
let loaded_matchparen          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_logiPat           = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_gzip              = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1
let g:loaded_matchparen        = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tarPlugin         = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1
" }}}禁用neovim自带插件
