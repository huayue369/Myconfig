scriptencoding utf-8

"按键映射
"-----------

" w0rp/ale{{{
nmap [a <Plug>(ale_next_wrap)
nmap ]a <Plug>(ale_previous_wrap)
" }}}w0rp/ale

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
nnoremap <silent> <Leader>e :Fila -drawer -toggle<CR>
nnoremap <silent> <Leader>te :<C-u>Fila<CR>
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
nnoremap <leader>ti :Vista!!<CR>
"}}}liuchengxu/vista.vim

"Konfekt/FastFold{{{
xnoremap zi :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zv[z<cr>
xnoremap zc :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zV[z<cr><Paste>
nnoremap zuz <Plug>(FastFoldUpdate)
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
nnoremap <silent> <Leader>m :Commands<CR>
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

" anschnapp/move-less{{{
noremap , :call MoveLessMode()<cr>
" }}}anschnapp/move-less

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
" Find symbol of current document
nnoremap <silent> <localleader>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <localleader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <localleader>j  :<C-u>CocNext<CR>
" Resume latest coc list
nnoremap <silent> <localleader>p  :<C-u>CocListResume<CR>
"}}}neoclide/coc.nvim
