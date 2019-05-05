" 语言配置项

" golang{{{

" vim-go{{{
let $GINKGO_EDITOR_INTEGRATION = "true"
let g:go_list_type = "quickfix"     " 修复gorun等命令不显示的问题
let g:go_def_mode='gopls'
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 0 " 禁用默认映射K
let g:go_auto_sameids = 1           " 高亮显示光标下的所有使用标识符
let g:go_auto_sameids = 1           " 显示光标下字符所有用法
let g:go_auto_type_info = 1         " 显示变量类型信息

" 强化Vim golang语法高亮功能
let g:go_highlight_array_whitespace_error = 1    " 突出“[]”后空白
let g:go_highlight_chan_whitespace_error = 1     " 突出空白接收操作符
let g:go_highlight_trailing_whitespace_error = 1 " 突出尾随空格
let g:go_highlight_extra_types = 1               " 突出常用库
let g:go_highlight_space_tab_error = 1           " 突出的实例选项卡下面的空间
let g:go_highlight_operators = 1                 " 突出运算符号
let g:go_highlight_functions = 1                 " 强调功能和方法
let g:go_highlight_function_parameters = 1       " 突出变量名参数
let g:go_highlight_build_constraints = 1         " 强调建立约束
let g:go_highlight_generate_tags = 1             " 强调生成指令
let g:go_highlight_types = 1                     " 强调结构和接口名称
let g:go_highlight_fields = 1                    " 强调结构体字段名
let g:go_highlight_string_spellcheck = 1         " 强调拼写错误
let g:go_highlight_format_strings = 1            " 突出printf-style字符串动词
let g:go_highlight_variable_declarations = 1     " 强调在变量声明变量名
let g:go_gocode_unimported_packages = 1          " 导入包的补全建议
let g:go_highlight_variable_assignments = 1      " 突出显示变量名
" gocode补全
let g:go_gocode_propose_builtins = 1    " 禁用gocode补全
let g:go_gocode_propose_source = 1      " gocode使用源文件,不是二进制包补全建议
let g:go_gocode_propose_builtins = 1    " 开启函数常量自动完成
let g:go_decls_mode = 'fzf'             " 定义工具用于|:GoDecls|
let g:go_gocode_unimported_packages = 1 " gocode”包括从unimported建议包
" }}}vim-go
" }}}golang

" markdown配置{{{
" markdown-preview{{{
let g:mkdp_auto_start = 1       " 自动打开预览窗口
let g:mkdp_auto_close = 1       " 更改时，自动关闭预览窗口
let g:mkdp_refresh_slow = 0     " 插离开入模式自动刷新标记
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
" }}}markdown-preview
" }}}markdown配置
