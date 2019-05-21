" Defx
" ----
call defx#custom#option('_', {
	\ 'columns': 'mark:indent:git:icons:filename',
	\ 'winwidth': 30,
	\ 'split': 'vertical',
	\ 'direction': 'topleft',
	\ 'show_ignored_files': 0,
	\ })

" Close defx if it's the only buffer left in the window
autocmd MyAutoCmd WinEnter * if &ft == 'defx' && winnr('$') == 1 | q | endif

" Move focus to the next window if current buffer is defx
autocmd MyAutoCmd TabLeave * if &ft == 'defx' | wincmd w | endif

" Define mappings
autocmd MyAutoCmd FileType defx do WinEnter | call s:defx_my_settings()
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <CR> <sid>defx_toggle_tree()
	nnoremap <silent><buffer><expr> l     defx#do_action('drop')
	nnoremap <silent><buffer><expr> s     defx#do_action('open', 'botright vsplit')
	nnoremap <silent><buffer><expr> i     defx#do_action('open', 'topleft split')
    nnoremap <silent><buffer><expr> P     defx#do_action('open', 'pedit')
    " 新建文件夹
	nnoremap <silent><buffer><expr> K     defx#do_action('new_directory')
    " 新建文件
	nnoremap <silent><buffer><expr> N     defx#do_action('new_multiple_files')
    " 删除
	nnoremap <silent><buffer><expr> dd    defx#do_action('remove')
    " 重命名
	nnoremap <silent><buffer><expr> r     defx#do_action('rename')
    " 用gui打开文件
	nnoremap <silent><buffer><expr> x     defx#do_action('execute_system')
    " 显示隐藏文件
	nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')
    " 复制路径
	nnoremap <silent><buffer><expr> yy    defx#do_action('yank_path')
    " 返回到上级目录
	nnoremap <silent><buffer><expr> h     defx#do_action('cd', ['..'])
    " cd到根目录
	nnoremap <silent><buffer><expr> ~     defx#do_action('cd')
    " 退出
	nnoremap <silent><buffer><expr> q     defx#do_action('quit')

	nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
    " 复制
	nnoremap <silent><buffer><expr><nowait> c  defx#do_action('copy')
    " 移动
	nnoremap <silent><buffer><expr><nowait> m  defx#do_action('move')
    " 粘贴
	nnoremap <silent><buffer><expr><nowait> p  defx#do_action('paste')

	nnoremap <silent><buffer><expr><nowait> <Space>
		\ defx#do_action('toggle_select') . 'j'

	nnoremap <silent><buffer><expr> '      defx#do_action('toggle_select') . 'j'
	nnoremap <silent><buffer><expr> *      defx#do_action('toggle_select_all')
	nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
	nnoremap <silent><buffer><expr> <C-g>  defx#do_action('print')

	nnoremap <silent><buffer><expr> S  defx#do_action('toggle_sort', 'Time')
	nnoremap <silent><buffer><expr> C
		\ defx#do_action('toggle_columns', 'mark:filename:type:size:time')

	" Plugins
	nnoremap <silent><buffer><expr> <Tab> winnr('$') != 1 ?
		\ ':<C-u>wincmd w<CR>' :
		\ ':<C-u>Defx -buffer-name=temp -split=vertical<CR>'

	nnoremap <silent><buffer><expr>gl  defx#do_action('call', 'DefxTmuxExplorer')
	nnoremap <silent><buffer><expr>gr  defx#do_action('call', 'DefxDeniteGrep')
	nnoremap <silent><buffer><expr>gf  defx#do_action('call', 'DefxDeniteFile')
	nnoremap <silent><buffer><expr>w   defx#do_action('call', 'DefxToggleWidth')
endfunction

function! s:defx_toggle_tree() abort
  if defx#is_directory()
    return defx#do_action('open_or_close_tree')
  endif
  return defx#do_action('drop')
endfunction

" PLUGINS
" ---

" Find files in parent directory with Denite
function! g:DefxDeniteFile(context) abort
	let l:target = a:context['targets'][0]
	let l:parent = fnamemodify(l:target, ':h')
	silent execute 'wincmd w'
	silent execute 'Denite file/rec:'.l:parent
endfunction

" Grep in parent directory with Denite
function! g:DefxDeniteGrep(context) abort
	let l:target = a:context['targets'][0]
	let l:parent = fnamemodify(l:target, ':h')
	silent execute 'wincmd w'
	silent execute 'Denite grep:'.l:parent
endfunction

" Toggle between defx window width and longest line
function! g:DefxToggleWidth(context) abort
	let l:max = 0
	let l:original = a:context['winwidth']
	for l:line in range(1, line('$'))
		let l:len = len(getline(l:line))
		if l:len > l:max
			let l:max = l:len
		endif
	endfor
	execute 'vertical resize '.(l:max == winwidth('.') ? l:original : l:max)
endfunction

" Detect file-explorer (lf or ranger)
let s:explorer = ''
if executable('lf')
	let s:explorer = 'lf'
elseif executable('ranger')
	let s:explorer = 'ranger'
endif

" Open file-explorer split with tmux
function! g:DefxTmuxExplorer(context) abort
	if empty('$TMUX') || empty(s:explorer)
		return
	endif
	let l:target = a:context['targets'][0]
	let l:parent = fnamemodify(l:target, ':h')
	silent execute '!tmux split-window -p 30 -c '.l:parent.' '.s:explorer
endfunction

let g:defx_git#indicators = {
	\ 'Modified'  : '•',
	\ 'Staged'    : '✚',
	\ 'Untracked' : 'ᵁ',
	\ 'Renamed'   : '≫',
	\ 'Unmerged'  : '≠',
	\ 'Ignored'   : 'ⁱ',
	\ 'Deleted'   : '✖',
	\ 'Unknown'   : '⁇'
	\ }

highlight Defx_filename_3_Modified  ctermfg=1  guifg=#D370A3
highlight Defx_filename_3_Staged    ctermfg=10 guifg=#A3D572
highlight Defx_filename_3_Ignored   ctermfg=8  guifg=#404660
highlight def link Defx_filename_3_Untracked Comment
highlight def link Defx_filename_3_Unknown Comment
highlight def link Defx_filename_3_Renamed Title
highlight def link Defx_filename_3_Unmerged Label
" highlight Defx_git_Deleted   ctermfg=13 guifg=#b294bb
