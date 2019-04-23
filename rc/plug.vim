
call plug#begin('~/.cache/plugged')

" 主题{{{

" Plug 'logico-dev/typewriter'
Plug 'junegunn/seoul256.vim'
"Plug 'KKPMW/sacredforest-vim'
" }}}主题

" neovim界面优化{{{

" 提供图标美化
Plug 'ryanoasis/vim-devicons'
" 启动界面
Plug 'mhinz/vim-startify'
" tabline插件
Plug 'bagrat/vim-buffet'
" }}}neovim界面优化

" 操作强化{{{

" 代码缩进指示线
Plug 'Yggdroot/indentLine'
" 括号高亮
Plug 'Yggdroot/hiPairs'
" 终端强化
Plug 'kassio/neoterm'  
" 粘贴强化
Plug 'svermeulen/vim-yoink'
" 删除优化
Plug 'svermeulen/vim-cutlass'
" 多光标操作
Plug 'mg979/vim-visual-multi'
" 快速注释文本
Plug 'scrooloose/nerdcommenter', 
            \{'on':['<Plug>NERDCommenterSexy',
            \'<Plug>NERDCommenterUncomment',
            \'<Plug>NERDCommenterToggle']}
" 平滑滚动
Plug 'yuttie/comfortable-motion.vim'
" 自动解决粘贴文本格式乱问题
Plug 'ConradIrwin/vim-bracketed-paste'
" 仅在折叠时更新折叠
Plug 'Konfekt/FastFold'
" 增强文本操作
Plug 'wellle/targets.vim'
" 符号对增删该
Plug 'tpope/vim-surround'
" .重复插件操作
Plug 'tpope/vim-repeat'
" }}}操作强化

" Dish文档支持
Plug 'rizzatti/dash.vim',       {'on':'Dish'}

" 快速移动{{{

" 代码块可视移动
Plug 'matze/vim-move'
" 快速移动光标
Plug 'easymotion/vim-easymotion', 
            \{'on':['<Plug>(easymotion-sn)',
            \'<Plug>(easymotion-tn)',
            \'<Plug>(easymotion-bd-tl)',
            \'<Plug>(easymotion-overwin-f)',
            \'<Plug>(easymotion-bd-tl)']}
" }}}快速移动

" git{{{

" iamcco插件依赖
Plug 'iamcco/sran.nvim',        {'do': { -> sran#util#install() } }
" git-diff改动标记
Plug 'iamcco/git-p.nvim'
" }}}git

" junegunn大神套装{{{

" 提供关灯效果，方便阅读代码
Plug 'junegunn/goyo.vim',       {'on':'Goyo'}
" 配合Goyo提供更好的关灯效果
Plug 'junegunn/limelight.vim',  {'on':'Goyo'}
" 实现plug自身管理
Plug 'junegunn/vim-plug'
" 模糊搜索🔍️
Plug 'junegunn/fzf.vim'
" 代码对齐
Plug 'junegunn/vim-easy-align', {'on':'<plug>(EasyAlign)'}
" }}}junegunn大神套装

" 项目文件浏览 {{{

" 异步自动管理ctags标签文件
Plug 'ludovicchabant/vim-gutentags'
" ctags树浏览
Plug 'liuchengxu/vista.vim',    {'on':'Vista!!'}
" 文件更改历史浏览
Plug 'mbbill/undotree',         {'on':'UndotreeToggle'}
" 文件树浏览
Plug 'justinmk/vim-dirvish',    {'on':'Dirvish'}
" }}}项目文件浏览

" 补全{{{

" 补全引擎
Plug 'neoclide/coc.nvim',       {'do':function('UserFuncCocSetup')}
" 片段
Plug 'honza/vim-snippets',      {'for':'go'}
" }}}补全

" 语法{{{

" 代码格式化
Plug 'sbdchd/neoformat',        {'on':'Neoformat'}
" 语法检查
Plug 'neomake/neomake',         {'for':'go'}
" golang支持
Plug 'fatih/vim-go',            {'for':'go'}
" 各种语言支持
Plug 'sheerun/vim-polyglot',    {'for':['go','py']}
" md语法加强
Plug 'tpope/vim-markdown',      {'for':['markdown','md']}
" md预览
Plug 'iamcco/markdown-preview.nvim'
            \,{'do':'cd app&yarn install','for':['markdown','md']}
" }}}语法

call plug#end()
