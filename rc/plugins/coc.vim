
" if hidden not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=1
" always show signcolumns
set signcolumn=yes
" 显示签名帮助
let b:coc_current_function = 1
" 让 session 支持globals 变量
"let g:WorkspaceFolders = 1
"set noshowmode
set completeopt+=noinsert,menuone,noselect
" floating window
let g:coc_force_debug = 1
" 自动检查并安装插件
call coc#add_extension('coc-json', 'coc-syntax', 'coc-tag','coc-snippets','coc-gocode','coc-highlight','coc-pairs','coc-yaml','coc-yank')
" 获得正确的注释高亮显示
autocmd FileType json syntax match Comment +\/\/.\+$+
" 在光标保持器上突出显示光标下的符号
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" 自动启动语法代码完成
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \	if &omnifunc == "" |
        \		setlocal omnifunc=syntaxcomplete#Complete |
        \	endif
endif

" ------------------------------------------------------------------
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" ------------------------------------------------------------------
" highlight text color
autocmd ColorScheme * highlight! CocHighlightText  guibg=#054c20 ctermbg=023
" do not underline error/info/hit lines
autocmd ColorScheme * highlight! link CocErrorHighlight NoCocUnderline
autocmd ColorScheme * highlight! link CocWarningHighlight NoCocUnderline
autocmd ColorScheme * highlight! link CocInfoHighlight NoCocUnderline
autocmd ColorScheme * highlight! link CocHintHighlight NoCocUnderline
