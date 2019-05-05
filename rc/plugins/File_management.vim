" 项目目录树形浏览器
"
" 防止发生按键冲突
augroup dirvish_config
      autocmd!
      autocmd FileType dirvish silent! unmap <buffer> <C-n>
      autocmd FileType dirvish silent! unmap <buffer> <C-p>
augroup END
