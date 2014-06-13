" 开启光亮光标行
set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred  guibg=darkred guifg=whit
hi CursorLine   cterm=NONE ctermbg=darkred  guibg=green guifg=whit

"设置字体
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI

colorscheme desert
" colorscheme vividchalk
" 高亮字符，让其不受100列限制 
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
" :match OverLength '\%101v.*' 
:match OverLength '\%200v.*' 

" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup 

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
set bufhidden=hide 

" 字符间插入的像素行数目 
set linespace=0 

" 增强模式中的命令行自动完成操作 
set wildmenu 

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=1 

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l 

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
"set mouse=a 
"set selection=exclusive 
"set selectmode=mouse,key 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 

" 不让vim发出讨厌的滴滴声 
set noerrorbells 

" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 

" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 

" 在搜索的时候忽略大小写 
set ignorecase 

" 不要高亮被搜索的句子（phrases） 
"set nohlsearch 
set hlsearch
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 

" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 

" 不要闪烁 
"set novisualbell 

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 

" 总是显示状态行 
set laststatus=2 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
 set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
set cindent 

" 制表符为4 
set tabstop=4 

" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 

" 不要用空格代替制表符 
set noexpandtab 

" 不要换行 
"set nowrap 

" 在行和段开始处使用制表符 
set smarttab 

" 支持打开文件的编码方式
 set encoding=utf-8 
"set encoding=gb2312
"set fileencoding=gb2312
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,latin-1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" CTags的设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 按照名称排序 
let Tlist_Sort_Type = "name" 

" 在右侧显示窗口 
let Tlist_Use_Right_Window = 1 

" 压缩方式 
let Tlist_Compart_Format = 1 

" 如果只有一个buffer，kill窗口也kill掉buffer 
let Tlist_Exist_OnlyWindow = 1 

" 不要关闭其他文件的tags 
let Tlist_File_Fold_Auto_Close = 0 

" 不要显示折叠树 
let Tlist_Enable_Fold_Column = 0 

let NERDTreeWinSize = 36
let NERDTreeShowBookmarks = 0
let NERDTreeChDirMode = 2

" 设置doxygenTookkit配置
let g:DoxygenToolkit_authorName="yql, yin.qinlong@sina.com"
let g:DoxygenToolkit_versionString="1.0.1"
"let s:licenseTag = "Copyright(C)\<enter>"
"let s:licenseTag = s:licenseTag . "For free\<enter>"
"let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
"let g:DoxygenToolkit_licenseTag = s:licenseTag
"let g:DoxygenToolkit_briefTag_funcName="yes"
"let g:doxygen_enhanced_color=1
":map <C-k>	:Dox<enter>
:map <C-l>  :DoxAuthor<enter>

"开启phpcomplete
filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set keywordprg=:help

"ctags目录设置
set tags=tags;
set autochdir

"开启supertab
let g:SuperTabDefaultCompletionType="context"

"phpdoc
inoremap <C-k> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-k> :call PhpDocSingle()<CR>
vnoremap <C-k> :call PhpDocRange()<CR> 

"有道翻译
vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 
noremap <leader>yd :Yde<CR>

"vimwiki设置
let g:vimwiki_list = [{'path': '/home/qinlong/dev/www/docs/vimwiki/default/',
            \'template_path' : '/home/qinlong/dev/www/docs/template/default/',
            \'template_default' : 'default_template',
            \'template_ext' : '.html',
            \'path_html': '/home/qinlong/dev/www/docs/html/default/'},{'path': '/home/qinlong/dev/www/docs/vimwiki/sina/',
            \'template_path' : '/home/qinlong/dev/www/docs/template/sina/',
            \'template_default' : 'default_template',
            \'template_ext' : '.html',
            \'path_html': '/home/qinlong/dev/www/docs/html/sina/'},{'path': '/home/qinlong/dev/www/docs/vimwiki/my/',
            \'template_path' : '/home/qinlong/dev/www/docs/template/my/',
            \'template_default' : 'default_template',
            \'template_ext' : '.html',
            \'path_html': '/home/qinlong/dev/www/docs/html/my/'}]

"快捷键自定义
:map <C-h>  K<Esc>
:map <C-j>  :!php -l %<enter>
:map <F4> a<C-R>=strftime("%c")<CR><Esc>

if has("unix")
	nmap xw :r $HOME/.vimxfer<CR>
	nmap xr :'a,.w! $HOME/.vimxfer<CR>
	vmap xw c<esc>:r $HOME/.vimxfer<CR>
	vmap xr :w! $HOME/.vimxfer<CR>
else
	nmap xw :r c:/.vimxfer<CR>
	nmap xr :'a,.w! c:/.vimxfer<CR>
	vmap xw c<esc>:r c:/.vimxfer<cr>
	vmap xr :w! c:/.vimxfer<CR>
endif
