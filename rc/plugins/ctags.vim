scriptencoding utf-8

"vista配置{{{
"
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
" 启用悬浮窗预览
let g:vista_echo_cursor_strategy ='floating_win'
" 侧边栏宽度.
let g:vista_sidebar_width = 30
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
" 展示样式
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" Executive used when opening vista sidebar without specifying it.
" Avaliable: 'coc', 'ctags'. 'ctags' by default.
" 优先选择lsp作为标签来源，其次ctags
let g:vista_cpp_executive = 'vim_lsp'
let g:vista_default_executive = 'ctags'
" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
let g:vista_finder_alternative_executives = ['coc']
"}}}vista配置

"gutentags配置{{{

" 在状态行显示ctags更新情况
set statusline+=%{gutentags#statusline()}
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
" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0
"}}}gutentags配置
