
" TAB Brffer操作{{{
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bonly!<CR>
noremap <C-tab> :tabnew split<CR>
" }}}TAB Brffer操作

" 切换换到当前文件目录{{{
nnoremap <silent> <leader>. :cd %:p:h<CR>
" }}}切换换到当前文件目录

" mark标签预览{{{
nnoremap <leader>m :marks<cr>
" }}}mark标签预览

" 系统寄存器粘贴复制键{{{
nmap <A-v> "+gp
vmap <A-v> "+gp
vmap <A-y> "+y
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
