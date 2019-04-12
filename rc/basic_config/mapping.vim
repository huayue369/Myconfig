scriptencoding utf-8

" 缓冲区操作{{{
nnoremap <M-q> :bd<CR>
" }}}缓冲区操作

" 系统寄存器粘贴复制键{{{
nmap <leader>v "+gp
vmap <leader>v "+gp
vmap <leader>y "+y
" }}}系统寄存器粘贴复制键

" esc优化{{{
inoremap jj <Esc>`^
" }}}esc优化

" 快速保存退出{{{
nmap <leader>q :q<cr>
nmap <leader>w :w<cr>
" }}}快速保存退出

" 分屏键位{{{
nnoremap <leader>\ :vnew<CR>
nnoremap <leader>- :new<CR>
" }}}分屏键位

" 让N/n更简单好用{{{
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]
" }}}让N/n更简单好用

" 智能行移动{{{
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" }}}智能行移动

" <,>开关折叠{{{
nnoremap <cr> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" }}}<,>开关折叠

" no highlight {{{
nnoremap <esc> :noh<return><esc>
" }}} no highlight

" find the conflict line of git {{{
map <leader><leader>c /\v^[<\|=>]{7}( .*\|$)<CR>
" }}} find the conflict line of git

" move code block {{{
vnoremap < <gv
vnoremap > >gv
" }}} move code block

" list all lines with the word under the cursor {{{
nmap <Leader><Leader>f [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
" }}} list all lines with the word under the cursor

" move in split windows {{{
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
" }}} move in split windows

" select all {{{
map <Leader>sa ggVG
" }}} select all
