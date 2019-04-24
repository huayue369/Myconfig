
"按键映射
"-----------

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

"svermeulen/vim-cutlass{{{
nnoremap x d
xnoremap x d
nnoremap xx dd
nnoremap X D
"}}}svermeulen/vim-cutlass

"svermeulen/vim-yoink{{{
nmap <localleader>y :Yanks<cr>
nmap <a-n> <plug>(YoinkRotateBack)
nmap <a-p> <plug>(YoinkRotateForward)
nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
"}}}svermeulen/vim-yoink

"liuchengxu/vista.vim{{{
nnoremap <leader>ti :Vista coc<CR>
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
vmap F <Plug>(easymotion-bd-tl)
nmap f <Plug>(easymotion-overwin-f)
nmap F <Plug>(easymotion-bd-tl)
"}}}easymotion/vim-easymotion

"neoclide/coc.nvim{{{
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use tab for trigger completion with characters ahead and navigate
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"<cr>选择确认代码片段，<c-y>确认触发时进行扩展
nnoremap <silent> <localleader>k  :call <SID>show_documentation()<CR>
" Remap for format selected region
"vmap <leader>mt  <Plug>(coc-format-selected)
"nmap <leader>mt  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <localleader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <localleader>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <localleader>c  :<C-u>CocList commands<cr>
" Search workspace symbols
nnoremap <silent> <localleader>s  :<C-u>CocList -I symbols<cr>
" Resume latest coc list
nnoremap <silent> <localleader>m  :<C-u>CocListResume<CR>
"}}}neoclide/coc.nvim
