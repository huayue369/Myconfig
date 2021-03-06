
"按键映射
"-----------

" skywind3000/vim-preview{{{
noremap <m-u> :PreviewScroll -1<cr>
noremap <m-d> :PreviewScroll +1<cr>
inoremap <m-u> <c-\><c-o>:PreviewScroll -1<cr>
inoremap <m-d> <c-\><c-o>:PreviewScroll +1<cr>
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
" }}}skywind3000/vim-preview

" voldikss/vim-translate-me{{{
" 翻译光标下的文本，在命令行回显翻译内容
nmap <silent> <localleader>d <Plug>Translate
vmap <silent> <localleader>d <Plug>TranslateV
" 翻译光标下的文本，在窗口中显示翻译内容
nmap <silent> <localleader>w <Plug>TranslateW
vmap <silent> <localleader>w <Plug>TranslateWV
" 替换光标下的文本为翻译内容
nmap <silent> <localleader>r <Plug>TranslateR
vmap <silent> <localleader>r <Plug>TranslateRV
" }}}voldikss/vim-translate-me

" scrooloose/nerdcommenter{{{
nmap <Leader>cs <Plug>NERDCommenterSexy
nmap <Leader>cu <Plug>NERDCommenterUncomment
nmap <Leader>c<space> <Plug>NERDCommenterToggle
vmap <Leader>cs <Plug>NERDCommenterSexy
vmap <Leader>cu <Plug>NERDCommenterUncomment
vmap <Leader>c<space> <Plug>NERDCommenterToggle
" }}}scrooloose/nerdcommenter

" junegunn/goyo.vim
noremap <silent> <leader>gl :Goyo<CR>
" junegunn/goyo.vim

" sbdchd/neoformat{{{
nmap <silent> <leader>tm :Neoformat<cr>
vmap <silent> <leader>tm :Neoformat<cr>
" }}}sbdchd/neoformat

" Lenovsky/nuake{{{
nnoremap <leader>tl :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>
" }}}Lenovsky/nuake

"justinmk/vim-dirvish{{{
nnoremap <silent> <Leader>e
\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
"}}}justinmk/vim-dirvish

"liuchengxu/vista.vim{{{
nnoremap <leader>tv :Vista!!<CR>
nnoremap <leader>tc :Vista coc<CR>
"}}}liuchengxu/vista.vim

"junegunn/vim-easy-align{{{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"}}} junegunn/vim-easy-align

"imnalamburt/vim-mundo{{{
nnoremap <leader>tu :MundoToggle<CR>
"}}}simnalamburt/vim-mundo

"junegunn/fzf.vim{{{
" 搜索所有命令
nnoremap <silent> <Leader>a :Commands<CR>
" 搜索当前目录所有文件
nnoremap <silent> <Leader>f :Files<CR>
" 搜索当前所有bufer
nnoremap <silent> <Leader>b :Buffers<CR>
" 搜索当前缓冲区关键字
nnoremap <silent> <Leader>l :Lines<CR> 
" 搜索文件编辑历史记录
nnoremap <silent> <leader>h :History<CR>
" 搜索当前目录所有关键字
nnoremap <silent> <leader>r :Rg<CR>
"}}}junegunn/fzf.vim

"easymotion/vim-easymotion{{{
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nmap f <Plug>(easymotion-overwin-f)
nmap F <Plug>(easymotion-bd-tl)
"}}}easymotion/vim-easymotion

" vim-go{{{
" }}}vim-go

"neoclide/coc.nvim{{{
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use tab for trigger completion with characters ahead and navigate
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" 滚动悬浮窗口
nmap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nmap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
" 显示所有诊断
nnoremap <silent> <localleader>a  :<C-u>CocList diagnostics<cr>
" 显示所有插件扩展 
nnoremap <silent> <localleader>e  :<C-u>CocList extensions<cr>
" 显示命令
nnoremap <silent> <localleader>c  :<C-u>CocList commands<cr>
" 搜索符号 
nnoremap <silent> <localleader>s  :<C-u>CocList -I symbols<cr>
" 剪贴板历史列表
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
" 跳转到引用位置
nmap <silent> <A-[> <Plug>(coc-references)
" 跳转到定义位置
nmap <silent> <A-]> <Plug>(coc-definition)
" 跳转到实现位置
nmap <silent> <A--> <Plug>(coc-implementation)
" 跳转到类型定义位置
nmap <silent> <A-=> <Plug>(coc-type-definition)
" 跳转到申明位置
nmap <silent> <A-\> <Plug>(coc-declaration)
" 格式化当前buffer
nmap <silent> <localleader>fb <Plug>(coc-format)
" 格式化选中区间，可在正常和可视模式下工作
vmap <localleader>fp  <Plug>(coc-format-selected)
nmap <localleader>fp <Plug>(coc-format-selected)
"}}}neoclide/coc.nvim
