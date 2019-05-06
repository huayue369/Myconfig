
" 插件短配置
" -----------

" voldikss/vim-translate-me{{{
let g:tm_popup_window = 'floating' " 使用悬浮窗浏览结果
let g:vtm_default_mapping = 0      " 禁用默认按键
" }}}voldikss/vim-translate-me

" sbdchd/neoformat{{{
let b:neoformat_basic_format_align = 1 " 启用对齐
let g:neoformat_try_formatprg = 1      " 使用formatprg作为格式化程序
let b:neoformat_basic_format_retab = 1 " 制表符到空格转换
let b:neoformat_basic_format_trim = 1  " 修剪尾部空格
let g:neoformat_enabled_json = ['js-beautify']
" }}}sbdchd/neoformat

" Yggdroot/indentLine{{{
set list lcs=tab:\|\
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
" }}}Yggdroot/indentLine

"kassio/neoterm{{{
let &runtimepath.=',~/.cache/plugged/neoterm'
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_default_mod='belowright' " 水平分割
" let g:neoterm_default_mod='vertical'  " 垂直分割
"}}}kassio/neoterm

" comfortable-motion{{{
let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 2.0
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
" }}}comfortable-motion

" bagrat/vim-buffet{{{
function! g:BuffetSetCustomColors()
    hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#FF6A6A guifg=#000000
    hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#EEAD0E guifg=#000000
    hi! BuffetActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#EEAD0E guifg=#000000
    hi!  BuffetBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#CDC0B0 guifg=#000000
    hi!  BuffetTrunc cterm=NONE ctermbg=5 ctermfg=8 guibg=#CDC0B0 guifg=#000000
endfunction
let g:buffet_separator = ""
let g:buffet_tab_icon = "|\uf00a  💋️"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
let g:buffet_use_devicons = 1
" }}}bagrat/vim-buffet

" mg979/vim-visual-multi{{{
let g:VM_default_mappings = 0 " 禁用所有按键
let g:VM_cmdheight = 3
let g:VM_theme = 'pray'       " 主题
" }}}mg979/vim-visual-multi

" Konfekt/FastFold{{{
let g:fastfold_force = 1
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
" }}}Konfekt/FastFold

" easymotion/vim-easymotion{{{
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_prompt = 'Jump to → '
let g:EasyMotion_keys = 'fjdkswbeoavn'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
" }}}easymotion/vim-easymotion

" simnalamburt/vim-mundo{{{
let g:mundo_return_on_revert = 0 " 恢复后将焦点保持在Mundo窗口中
let g:mundo_inline_undo = 1 
let g:mundo_right = 1 " 右侧显示
set undofile
set undodir=/Users/lijia/.cache/undo
" }}}simnalamburt/vim-mundo

" Yggdroot/hiPairs{{{
let g:hiPairs_hl_matchPair = { 'term'    : 'underline,bold',
            \                  'cterm'   : 'underline,bold',
            \                  'ctermfg' : '15',
            \                  'ctermbg' : '12',
            \                  'gui'     : 'underline,bold',
            \                  'guifg'   : 'Black',
            \                  'guibg'   : 'Orange' }
" }}}Yggdroot/hiPairs

" scrooloose/nerdcommenter{{{
let g:NERDCommentWholeLinesInVMode=1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDCompactSexyComs = 1
" }}}scrooloose/nerdcommenter

" mhinz/vim-startify{{{
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
autocmd User Startified setlocal buflisted " 解决出现空白buffers
let g:startify_change_to_dir = 1           " 打开文件切换到该目录
let g:startify_fortune_use_unicode = 0
let g:startify_padding_left = 5            " 左边间距
let g:startify_session_sort = 0
let g:startify_update_oldfiles = 1         " 实时更新记录
" }}}mhinz/vim-startify
"
" junegunn/goyo.vim{{{
let g:goyo_width = 80
let g:goyo_height = 85
let g:goyo_linenr = 0
autocmd! User GoyoEnter Limelight  " limelight和goyo整合到一起
autocmd! User GoyoLeave Limelight! 
let g:limelight_default_coefficient = 0.7
let g:limelight_paragraph_span = 2 " 包含段落数
let g:limelight_bop = '^\s'        " 以缩进识别段落
let g:limelight_eop = '\ze\n^\s'
" }}}junegunn/goyo.vim
