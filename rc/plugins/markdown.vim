
"markdown-preview{{{
let g:mkdp_auto_start = 1       " 自动打开预览窗口
let g:mkdp_auto_close = 1       " 更改时，自动关闭预览窗口
let g:mkdp_refresh_slow = 0     " 插离开入模式自动刷新标记
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
let g:mkdp_echo_preview_url = 1 " 命令行回显预览url
let g:mkdp_preview_options = {
                  \ 'mkit': {},
                  \ 'katex': {},
                  \ 'uml': {},
                  \ 'maid': {},
                  \ 'disable_sync_scroll': 0,
                  \ 'sync_scroll_type': 'top',
                  \ 'hide_yaml_meta': 1
                  \ }
"let $NVIM_MKDP_LOG_FILE = expand('~/mkdp.log')
"let $NVIM_MKDP_LOG_LEVEL = 'debug'
"}}}markdown-preview
