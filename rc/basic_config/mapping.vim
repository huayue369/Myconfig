
" TAB Brffer操作{{{
nnoremap <A-q> :bd<CR>
noremap <silent><tab>e :tabnew<cr>
noremap <silent><tab>q :tabclose<cr>
noremap <silent><leader>1 :tabn 1<cr>
noremap <silent><leader>2 :tabn 2<cr>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>
" }}}TAB Brffer操作

" mark标签预览{{{
nnoremap <leader>m :marks<cr>
" }}}mark标签预览

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
nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>
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

" select all {{{
map <Leader>sa ggVG
" }}} select all
