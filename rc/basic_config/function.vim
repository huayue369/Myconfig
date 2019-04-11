scriptencoding utf-8

"功能函数
"---------

"coc自动执行server安装{{{
function! UserFuncCocSetup(info)
  if a:info.status ==# 'installed' || a:info.force
    !yarn install
    call coc#util#install_extension(join([
          \ 'coc-gocode',
          \ 'coc-highlight',
          \ 'coc-pairs',
          \ 'coc-json',
          \ 'coc-solargraph',
          \ 'coc-dictionary',
          \ 'coc-syntax',
          \ 'coc-snippets',
          \ 'coc-tag',
          \ 'coc-yank'
          \]))
  elseif a:info.status ==# 'updated'
    !yarn install
    call coc#util#update()
  endif
endfunction
"}}}coc自动执行server安装
