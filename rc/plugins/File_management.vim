" 项目目录树形浏览器
"
" 覆盖netrw
let g:loaded_netrwPlugin = 1
command! -nargs=? -complete=dir Explore Dirvish <args>
command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>
command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>
" 防止发生按键冲突
augroup dirvish_config
      autocmd!
      autocmd FileType dirvish silent! unmap <buffer> <C-n>
      autocmd FileType dirvish silent! unmap <buffer> <C-p>
augroup END
