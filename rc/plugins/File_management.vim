
" 项目文件管理插件配置
" --------------------

" file{{{
function! s:fila_viewer_init() abort
    nmap <buffer><expr> <Plug>(fila-custom-smart-enter) fila#viewer#drawer#is_drawer(win_getid())
                \ ? "\<Plug>(fila-action-enter-or-edit)\<Plug>(fila-action-tcd)"
                \ : "\<Plug>(fila-action-enter-or-edit)"
    nmap <buffer><expr> <Plug>(fila-custom-smart-leave) fila#viewer#drawer#is_drawer(win_getid())
                \ ? "\<Plug>(fila-action-leave)\<Plug>(fila-action-tcd)"
                \ : "\<Plug>(fila-action-leave)"
" 进入目录或打开文件
    nmap <buffer><nowait> <Enter> <Plug>(fila-custom-smart-enter)
" 文件折叠
    nmap <buffer><nowait> <C-h> <Plug>(fila-custom-smart-leave)
" 展开文件或目录"
    nmap <buffer><nowait> w <Plug>(fila-action-expand-or-collapse)
" 粘贴
    nmap <buffer><nowait> p <Plug>(fila-action-edit-pedit)
" 标记
    nmap <buffer><nowait> <C-j> <Plug>(fila-action-mark-toggle)j
" 取消标记
    nmap <buffer><nowait> <C-k> <Plug>(fila-action-mark-toggle)k
" 创建新文件
    nmap <buffer><nowait> N  <Plug>(fila-action-new-file)
" 创建新目录
    nmap <buffer><nowait> K  <Plug>(fila-action-new-directory)
" 移动文件或目录"
    nmap <buffer><nowait> m  <Plug>(fila-action-move)
" 复制
    nmap <buffer><nowait> c  <Plug>(fila-action-copy)
" 粘贴
    nmap <buffer><nowait> p  <Plug>(fila-action-paste)
" 删除
    nmap <buffer><nowait> d  <Plug>(fila-action-delete)
endfunction

autocmd MyAutoCmd User FilaViewerInit call s:fila_viewer_init()
" }}}file
