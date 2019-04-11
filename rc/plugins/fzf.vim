scriptencoding utf-8

" Fzf previx

set rtp+=/usr/local/opt/fzf

"开启文件内容预览{{{command! -bang -nargs=? -complete=dir Files
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
"}}}开启文件内容预览

"git-log使用选项{{{
let g:fzf_commits_log_options = '--graph --color=always
            \ --format="%C(yellow)%h%C(red)%d%C(reset)
            \ - %C(bold green)(%ar)%C(reset) %s %C(blue)<%an>%C(reset)"'
"}}}git-log使用选项

" ripgrep支持{{{
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
"}}}ripgrep支持

"fzf调用悬浮窗口{{{
let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, 'number', 'no')

  let height = float2nr(&lines/2)
  let width = float2nr(&columns - (&columns * 1 / 10))
  "let width = &columns
  let row = float2nr(&lines / 2.3)
  let col = float2nr((&columns - width) / 4)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height':height,
        \ }
  let win =  nvim_open_win(buf, v:true, opts)
  call setwinvar(win, '&number', 0)
  call setwinvar(win, '&relativenumber', 0)
endfunction
"}}}fzf调用悬浮窗口

" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--layout=reverse --preview "rougify {2..-1} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m ' . l:fzf_files_options,
        \ 'down':    '40%' })
endfunction

function! Fzf_color()
     call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
            \               'fnamemodify(v:val, ":t:r")'),
            \ 'sink': 'colo', 'down': '25%'})
endfunction

" Customize fzf colors to match your color scheme{{{
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
"}}}Customize fzf colors to match your color scheme
