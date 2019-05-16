
"vista配置{{{
"
"在状态栏显示最近的函数和方法 
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
" 启用悬浮窗预览
let g:vista_echo_cursor_strategy ='floating_win'
" 侧边栏宽度.
let g:vista_sidebar_width = 35
" 设置为0，以禁用光标移动时的回显.
let g:vista_echo_cursor = 1
" 当前游标上显示详细符号信息的时间延迟.
let g:vista_cursor_delay = 400
" 跳转到一个符号时，自动关闭vista窗口.
let g:vista_close_on_jump = 0
"打开vista窗口后移动到它.
let g:vista_stay_on_open = 1
" 跳转到标记后闪烁光标2次，间隔100ms.
let g:vista_blink = [2, 100]
" 图标美化
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf30b",
\   "variable": "\uf5c0",
\   "maps":"\uf127",
\   "structs":"\uf1b3"
\  }
" 标签树展开样式
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" coc作为备选tag源
let g:vista_finder_alternative_executives = ['coc']
" 优先使用lsp作为标签源
let g:vista_cpp_executive = 'vim_lsp'
" 和fzf共享tag文件，防止fzf单独生成tag源
let g:vista_fzf_preview = ['right:50%']
"}}}vista配置

"gutentags配置{{{

" 允许gutentags打开高级命令和选项"
let g:gutentags_define_advanced_commands = 1
" GTAGSLABEL 告诉 gtags 默认 C/C++/Java 等六种原生支持的代码直接使用 gtags
" 本地分析器，而其他语言使用 pygments 模块"
let $GTAGSLABEL = 'native-pygments'
" 环境变量必须设置，否则会找不到 native-pygments 和 language map 的定义
let $GTAGSCONF = '/usr/local/Cellar/global/6.6.3/.bottle/etc/gtags.conf'
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
    let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
    let g:gutentags_modules += ['gtags_cscope']
endif
" ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" 生成一个反向索引
let g:gutentags_cscope_build_inverted_index = 1
" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0
"}}}gutentags配置

" gutentags-puls{{{
" 搜索后将焦点更改为quickfix窗口(可选)
let g:gutentags_plus_switch = 1
" 禁用默认映射
let g:gutentags_plus_nomap = 1
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>
" }}}gutentags-puls
"
