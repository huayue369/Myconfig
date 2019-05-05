call plug#begin('~/.cache/plugged')

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
" 多光标操作
Plug 'mg979/vim-visual-multi'
" 平滑滚动
Plug 'yuttie/comfortable-motion.vim'
" 仅在折叠时更新折叠
Plug 'Konfekt/FastFold'
" 符号对增删该
Plug 'tpope/vim-surround'
" .重复插件操作
Plug 'tpope/vim-repeat'
" 异步划词翻译
Plug 'voldikss/vim-translate-me',
            \{'on':['<Plug>TranslateV',
            \'<Plug>Translate',
            \'<Plug>TranslateW',
            \'<Plug>TranslateWV',
            \'<Plug>TranslateR',
            \'<Plug>TranslateRV']}
" 快速注释文本
Plug 'scrooloose/nerdcommenter', 
            \{'on':['<Plug>NERDCommenterSexy',
            \'<Plug>NERDCommenterUncomment',
            \'<Plug>NERDCommenterToggle']}
" }}}操作强化

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

" 寄存器面板
Plug 'junegunn/vim-peekaboo'
" 提供关灯效果，方便阅读代码
Plug 'junegunn/goyo.vim',       {'on':'Goyo'}
" 配合Goyo提供更好的关灯效果
Plug 'junegunn/limelight.vim',  {'on':'Goyo'}
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
" 历史浏览tree
Plug 'mbbill/undotree',         {'on':'UndotreeToggle'}
Plug 'simnalamburt/vim-mundo',  {'on':'MundoToggle'}
" 文件树浏览
Plug 'justinmk/vim-dirvish',    {'on':'Dirvish'}
" }}}项目文件浏览

" 补全{{{

" 补全引擎 /从源码安装
Plug 'neoclide/coc.nvim',       {'do':
            \'yarn install --frozen-lockfile'}
" }}}补全

" 语法{{{

" 代码格式化
Plug 'sbdchd/neoformat',        {'on':'Neoformat'}
" 语法检查
Plug 'neomake/neomake',         {'on':'Neomake'}
" golang支持
Plug 'fatih/vim-go',            {'for':'go'}
" 各种语言支持
Plug 'sheerun/vim-polyglot',    {'for':['go','py']}
" md预览
Plug 'iamcco/markdown-preview.nvim'
            \,{'do':'cd app&yarn install','for':['markdown','md']}
" }}}语法

call plug#end()
