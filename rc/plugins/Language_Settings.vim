scriptencoding utf-8

" golang{{{

" vim-go{{{i
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 0 " 禁用默认映射K
let g:go_auto_sameids = 1 " 高亮显示光标下的所有使用标识符
let g:go_auto_type_info = 1 " 显示单词类型信息
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
let g:go_highlight_variable_assignments = 1      " 突出显示变量名
" gocode补全
let g:go_gocode_propose_source = 1 " gocode使用源文件,不是二进制包补全建议
" 开启函数常量自动完成
let g:go_gocode_propose_builtins = 1
" 定义工具用于|:GoDecls|
let g:go_decls_mode = 'fzf'
" gocode”包括从unimported建议包
let g:go_gocode_unimported_packages = 1

" }}}vim-go

" }}}golang
