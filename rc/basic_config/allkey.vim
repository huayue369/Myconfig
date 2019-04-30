
"按键映射
"-----------

" voldikss/vim-translate-me{{{
" 普通模式翻译光标下的文本，在窗口中显示翻译内容
nmap <silent> <localleader>w <Plug>TranslateW
" 可视模式翻译光标下的文本，在窗口中显示翻译内容
vmap <silent> <localleader>w <Plug>TranslateWV
" 普通模式替换光标下的文本为翻译内容
nmap <silent> <localleader>r <Plug>TranslateR
" 可视模式替换光标下的文本为翻译内容
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
noremap <silent> <leader>tm :Neoformat<cr>
" }}}sbdchd/neoformat

" kassio/neoterm{{{
noremap <silent> <leader>tl :botright Ttoggle<CR>
" }}}kassio/neoterm

"justinmk/vim-dirvish{{{
nnoremap <silent> <Leader>e :Dirvish<cr>
"}}}justinmk/vim-dirvish

"liuchengxu/vista.vim{{{
nnoremap <leader>tv :Vista!!<CR>
nnoremap <leader>tc :Vista coc<CR>
"}}}liuchengxu/vista.vim

"Konfekt/FastFold{{{
nmap zuz <Plug>(FastFoldUpdate)
"}}}Konfekt/FastFold

"junegunn/vim-easy-align{{{
xmap ga <Plug>(EasyAlign)
nnoremap ga <Plug>(EasyAlign)
"}}} junegunn/vim-easy-align

"mbbill/undotree{{{
function g:Undotree_CustomMap()
        nmap <buffer> J <plug>UndotreeNextState
        nmap <buffer> K <plug>UndotreePreviousState
endfunc
nnoremap <leader>tu :UndotreeToggle<CR>
"}}}mbbill/undotree

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

"neoclide/coc.nvim{{{
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use tab for trigger completion with characters ahead and navigate
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" 显示所有诊断
nnoremap <silent> <localleader>a  :<C-u>CocList diagnostics<cr>
" 显示所有插件扩展 
nnoremap <silent> <localleader>e  :<C-u>CocList extensions<cr>
" 显示命令
nnoremap <silent> <localleader>c  :<C-u>CocList commands<cr>
" 搜索符号 
nnoremap <silent> <localleader>s  :<C-u>CocList -I symbols<cr>
" 复制粘贴
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
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
"}}}neoclide/coc.nvim
