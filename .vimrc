" File              : .vimrc
" Author            : Jarvis <jarvis.wyy@gmail.com>
" Date              : 2017-06-16
" Last Modified Date: 2017-08-29
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
"设置终端支持256色
set term=xterm-256color
" 配色方案
"set background=dark
colorscheme tayra 
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 设置自动缩进
set autoindent
"用制表符表示一个缩进
" set noexpandtab
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
"set foldmethod=syntax
set foldmethod=manual
" 启动 vim 时关闭折叠代码
set nofoldenable
"搜索时在未完全输入完毕要检索的文本时就开始检索
set is
"设定命令行的行数为 1
set cmdheight=1
"防止特殊符号无法显示
set ambiwidth=double
"智能的选择对齐方式
set smartindent
"按一下 Backspace 就删除4个空格
set smarttab
"自动切换当前目录为当前文件所在的目录
set autochdir
"设置魔术
set magic
"关闭错误信息响铃
set noerrorbells
"关闭使用可视响铃代替呼叫
set novisualbell
"置空错误铃声的终端代码"
set t_vb=
"不设定在插入状态无法用退格键和 Delete 键删除回车符
set backspace=indent,eol,start
"从不备份
set nobackup
"禁止生成临时文件
set noswapfile
"有一个或以上大写字母时仍大小写敏感
set smartcase
"编码设置
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf8
set termencoding=utf-8
set enc=utf-8
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
"不在单词中间断行
set lbr
"打开断行模块对亚洲语言支持
set fo+=mB
"显示括号配对情况
set sm
"打开 C/C++ 风格的自动缩进
set cin
"设定 C/C++ 风格自动缩进的选项
set cino=:2g1t0(sus
"打开普通文件类型的自动缩进
set ai
"不使用 selectmode
set selectmode=
"不使用“Shift + 方向键”选择文本
set keymodel=
"指定在选择文本时，光标所在位置也属于被选中的范围
set selection=inclusive
"高亮显示匹配的括号
set showmatch
"命令行显示输入的命令
set showcmd
"命令行显示vim当前模式
set showmode
"粘贴时不自动对齐
set pastetoggle=<F2>
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=6
"使用鼠标
set mouse=vh
"文件修改之后自动载入
set autoread
"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
"set t_ti= t_te=
" 取消换行
"set nowrap
"打开文件回到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
"日志高亮
autocmd BufRead [0-9t]* setf logtalk

"" map
" 定义快捷键到行首和行尾
noremap <C-J> <Home>
noremap <C-L> <End>
inoremap <C-J> <Home>
inoremap <C-L> <End>
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q!<CR>
" 定义快捷键关闭当前所有窗口
nmap <Leader>a :qa!<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" F3 换行开关
nnoremap <F3> :set wrap! wrap?<CR>
" 列块可视模式
nnoremap <C-Q> <C-V>
" 补全替换
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" 定义快捷键在结对符之间跳转
"nmap <Leader>M %

"" ctags
" 指定目录生成tags
"map <F5> :! ctags -R --c++-kinds=+p --fields=+liaS --extra=+q --language-force=c++ .<CR><CR> :TlistUpdate<CR>
"imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+liaS --extra=+q --language-force=c++ .<CR><CR> :TlistUpdate<CR>
"自动显示匹配列表
set cst
" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>
" 设置tags路径
let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
"set tags+=/usr/include/c++/4.3.2/stdcpp.tags
set tags+=~/code/taomee/framework/async_server_v2/trunk/tags
set tags+=~/code/taomee/framework/libtaomee/tags
set tags+=~/code/taomee/framework/libtaomee++/trunk/tags
set tags+=~/code/taomee/framework/libtaomee++/trunk/tags
set tags+=~/project/lucky-clover/server/trunk/new_framework/tags

"" cscope
if has("cscope")
  " 指定用来执行 cscope 的命令
  set csprg=/usr/bin/cscope
  " 先搜索tags标签文件，再搜索cscope数据库
  set csto=1
  " 使用|:cstag|(:cs find g)，而不是缺省的:tag
  set cst
  " 不显示添加数据库是否成功
  set nocsverb
  " add any database in current directory
  if filereadable(".cscope.out")
	  cs add .cscope.out 
  elseif $CSCOPE_DB != ""
	  cs add $CSCOPE_DB
  endif
  " 显示添加成功与否
  set csverb 
endif
" 按键映射
nmap <Leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <Leader>fi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <Leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
" 指定目录生成tags
 nmap <F5> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > .cscope.files <CR>
		     \ :!find ~/project/xsy/server/trunk/proto -iname '*.proto' >> .cscope.files <CR>
			 \ :!cscope -Rbkq -i .cscope.files -f .cscope.out <CR>
			 \ :cs reset <CR>
			 \ :!ctags -R --c++-kinds=+p --fields=+liaS --extra=+q . ~/project/xsy/server/trunk/share<CR>
			 \ :TlistUpdate<CR>
imap <F5> <ESC>:!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > .cscope.files <CR>
		     \ :!find ~/project/xsy/server/trunk/proto -iname '*.proto' >> .cscope.files <CR>
			 \ :!cscope -Rbkq -i .cscope.files -f .cscope.out <CR>
			 \ :cs reset <CR>
			 \ :!ctags -R --c++-kinds=+p --fields=+liaS --extra=+q . ~/project/xsy/server/trunk/share<CR>
			 \ :TlistUpdate<CR>

"" vundle 
set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'the31k/vim-colors-tayra'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'majutsushi/tagbar' "实测打开大文件启动vim有一定延迟,存在大文件工程弃用
Plugin 'vim-scripts/taglist.vim'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe' " 根据环境与autocomplpop切换
Plugin 'othree/vim-autocomplpop'
Plugin 'eparreno/vim-l9'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'alpertuna/vim-header'
Plugin 'mileszs/ack.vim'
"Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " 必须
filetype on

"" airline 
" 设置主题
let g:airline_theme='bubblegum'
" 禁用检测空白错误
let g:airline#extensions#whitespace#enabled = 0
" 存在字符乱码,部分标志设置为空
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.spell = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.whitespace = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"" vim-cpp-enhanced-highlight 
syntax keyword cppSTLtype initializer_list

"" tagbar
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let g:tagbar_left = 1
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置显示／隐藏标签列表子窗口的快捷键，与taglist只可开启一个映射
"nnoremap <Leader>tl :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

"" taglist
"与tagbar只可开启一个映射
nnoremap <Leader>tl :TlistToggle<CR> 
"设置taglist宽度
let Tlist_WinWidth=32
"只有taglist窗口则关闭vim
let Tlist_Exit_OnlyWindow=1
"删除空行,使其更为紧凑
let Tlist_Compact_Format=1
"不显示标签折叠列
let Tlist_Enable_Fold_Column=0

"" vim-fswitch 
nmap <silent> <Leader>sw :FSHere<cr>

"" vim-signature
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "md",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

"" ctrlsf
nnoremap <Leader>sp :CtrlSF<CR>

"" nerdcommenter 
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

"" ultisnips 
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

"" nerdtree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 忽略.so文件
let NERDTreeIgnore = ['.*\.o$']

"" youcompleteme
" YCM 补全菜单配色
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全			
let g:ycm_seed_identifiers_with_syntax=1
" 开启 YCM 标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 语义补全快捷键
inoremap <leader>; <C-x><C-o>
" 关闭语法诊断显示
let g:ycm_show_diagnostics_ui = 0
" 指定python路径
" let g:ycm_server_python_interpreter='/opt/jarvis/app/bin/python3.5/python'
" 指定全局ycm_extra_conf.py路径
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"" vim-header
" 默认不自动插入
let g:header_auto_add_header = 0
" 设置姓名
let g:header_field_author = 'Jarvis'
" 设置邮箱
let g:header_field_author_email = 'jarvis.wyy@gmail.com'
" 不显示最后修改作者
let g:header_field_modified_by = 0
" 设置日期格式
let g:header_field_timestamp_format='%Y-%m-%d'
" 设置快捷键
map <F4> :AddHeader<CR>

"" ack
" 执行ag
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif
" 设置快捷键
cnoreabbrev Ack Ack!
nnoremap <Leader>g :Ack!<Space>

"" vim-indent-guides setting
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"" 环境恢复
" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
" 保存快捷键
map <leader>ss :mksession! .my.vim<cr> :wviminfo! .my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source .my.vim<cr> :rviminfo .my.viminfo<cr>

"" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
