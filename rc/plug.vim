call plug#begin('~/.cache/plugged')

" neovim界面优化{{{

" 提供图标美化
Plug 'ryanoasis/vim-devicons'
" 主题界面
Plug 'mhinz/vim-startify'
" }}}neovim界面优化

" 操作强化{{{

" 代码缩进指示线
Plug 'Yggdroot/indentLine'
" 括号对高亮
Plug 'Yggdroot/hiPairs'
" 多光标操作
Plug 'mg979/vim-visual-multi'
" 平滑滚动
Plug 'yuttie/comfortable-motion.vim'
" 符号对增删该
Plug 'tpope/vim-surround'
" .重复插件操作
Plug 'tpope/vim-repeat'
" 更好用的快捷操作
Plug 'tpope/vim-unimpaired'
" 终端强化
Plug 'Lenovsky/nuake', {'on':'Nuake'}
" 异步划词翻译框架（支持各种翻译源)
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

" 模糊搜索🔍️
Plug 'junegunn/fzf.vim'
" 寄存器面板
Plug 'junegunn/vim-peekaboo'
" 提供关灯效果，方便阅读代码
Plug 'junegunn/goyo.vim',       {'on':'Goyo'}
" 配合Goyo提供更好的关灯效果
Plug 'junegunn/limelight.vim',  {'on':'Goyo'}
" 代码对齐
Plug 'junegunn/vim-easy-align', {'on':'<plug>(EasyAlign)'}
" }}}junegunn大神套装

" 项目文件浏览 {{{

" 异步自动管理ctags标签文件
Plug 'ludovicchabant/vim-gutentags'
" gutentags列表支持
Plug 'skywind3000/gutentags_plus'
" 列表预览
Plug 'skywind3000/vim-preview'
" ctags树浏览
Plug 'liuchengxu/vista.vim',    {'on':'Vista!!'}
" 历史浏览tree
Plug 'simnalamburt/vim-mundo',  {'on':'MundoToggle'}
" 文件树浏览
Plug 'Shougo/defx.nvim',       
            \{ 'do': ':UpdateRemotePlugins'}
" defx图标
Plug 'kristijanhusak/defx-icons'
" }}}项目文件浏览

" 补全{{{

" 补全引擎 /从源码安装
Plug 'neoclide/coc.nvim',       {'do':
            \'yarn install --frozen-lockfile'}
" 代码片段源
Plug 'honza/vim-snippets',      {'for':'go'}
" }}}补全

" 语法{{{

" 代码格式化
Plug 'sbdchd/neoformat',        {'on':'Neoformat'}
" 语法检查
Plug 'neomake/neomake',         {'on':'Neomake'}
" golang支持
Plug 'fatih/vim-go',            {'for':'go'}
" 多语言扩展
Plug 'sheerun/vim-polyglot',    {'for':['go','py']}
" md预览
Plug 'iamcco/markdown-preview.nvim'
            \,{'do':'cd app&yarn install','for':['markdown','md']}
" }}}语法

call plug#end()
