" vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
" The bundles you install will be listed here
"
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
" When vim-airline is correctly loaded, Vim will draw a nice statusline at the bottom of each window.
Bundle 'majutsushi/tagbar'
" Bundle 'tpope/vim-fugitive'
Bundle 'kshenoy/vim-signature'
" vim-signature is a plugin to place, toggle and display marks.
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/neocomplete.vim'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'junegunn/gv.vim'
Bundle 'pearofducks/ansible-vim'
" Bundle 'fatih/vim-go'
" Bundle 'WolfgangMehner/lua-support'
" Bundle 'xolox/vim-lua-ftplugin'
" Bundle 'Raimondi/delimitMate'
" delimitMate provides automatic closing of quotes,parenthesis,brackets,etc.
" Bundle 'xolox/vim-misc'
" Bundle 'dkprice/vim-easygrep'
" vim-easygrep Fast and Easy Find and Replace Across Multiple Files

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""" above lines must be at the top """"""""""""""""'


""""""""""""""""""""""""""""""
" keybind setting
""""""""""""""""""""""""""""""
vnoremap <Enter> <Plug>(EasyAlign)
nnoremap <silent><C-d> :bd<CR> :syntax on<CR>
nnoremap <silent><Tab> :bn<CR>
nnoremap <silent><S-Tab> :bp<CR>
"用空格键来打开/关闭折叠
nnoremap <silent><space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"开关文件浏览器
noremap <silent><F2> :NERDTreeToggle <CR>
"在文件浏览器中定位当前文件
noremap <silent><F2>f :NERDTreeFind <CR>
noremap <silent><F3>a :DoxAuthor<CR>
noremap <silent><F3>f :Dox<CR>
noremap <silent><F3>b :DoxBlock<CR>
noremap <silent><F3>l :DoxLic<CR>
noremap <silent><F4> :TagbarToggle<CR>
"nnoremap <silent><F5> :GitGutterToggle<CR>
nnoremap <silent><F5> :nohl<CR>
noremap <silent><F6> :PlugInstall<CR>
"设置a.vim插件的快捷键
noremap <silent><F9> :A<CR>
"设置F12为显示行号快捷键
noremap <silent><F12> :set number!<CR>
set      pastetoggle=<F11>
" move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :q!<CR>
" Code checking (pylint, pyflakes, pylama, ...) that can be run simultaneously
nmap <Leader>c :PymodeLint<CR>
" Autofix PEP8 errors
nmap <Leader>a :PymodeLintAuto<CR>
" Run python code (<leader>r)
" Add/remove breakpoints (<leader>b)
" Search in python documentation (K)
" Code refactoring <rope refactoring library> (rope)
" Strong code completion (rope)
" Go to definition (<C-c>g for :RopeGotoDefinition)

""""""""""""""""""""""""""""""
" global settings
""""""""""""""""""""""""""""""
let python_highlight_all = 1
set      shell=/bin/sh
syntax   enable
syntax   on
set      number
set cursorline " highlight current line
hi CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 第80列红色警戒线
" set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" 段落符
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_faster = 1

"搜索时及时匹配且忽略大小写
set      incsearch
set      ignorecase
"搜索时高亮显示被找到的文本
set      hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set      shiftwidth=4
set      softtabstop=4      " number of spaces in tab when editing
set      tabstop=4      " number of visual spaces per TAB

"将Tab替换为空格
set      expandtab      " tabs are spaces
set      smarttab
retab
 
set      foldenable
" set      foldmethod=indent
set      foldmethod=manual
set      foldlevel=1
 
"光标到底部和顶部时保持5行距离
set      scrolloff=5
 
set      nocompatible " Use Vim defaults (much better!)
set      history=1500 " keep 1500 lines of command line history
set      ruler " show the cursor position all the time
set      laststatus=2

"去掉预览窗口preview和设置longest
set      completeopt=menu,longest

"命令行高度为2
set      cmdheight=2
 
"使用VIM不兼容模式
set      nocp


"允许继续向前删除
set      backspace=indent,eol,start

"允许光标跨行
"set      whichwrap=b,<,>,[,],h,l

language message en_US.UTF-8
set      helplang=cn
set      ambiwidth=double
set      encoding=utf-8
set      langmenu=zh_CN.UTF-8
set      fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set      linebreak          "不在单词中间断行
"允许汉字断行
set      fo+=mB
"显示括号配对情况
set      showmatch
"打开普通文件类型的自动缩进。 该自动缩进不如 cindent 智能， 但它可以为你编辑非C/C++ 文件提供一定帮助。
set      autoindent
"不使用 selectmode。
set      selectmode=
"使用“Shift + 方向键”选择文本
set      keymodel=startsel,stopsel
"在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来。
set      wildmenu
"如果去掉这一行,默认值set mouse=a就生效了,这时不能用鼠标选中复制.
set      mouse=v
" ctags在当前目录找不到tags文件就向父目录找
set      tags=tags;
"打开文件时自动到达上次浏览时的位置
set      viminfo='1000,f1,<500

autocmd  BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"git commit添加注释时设置最大宽度和自动换行
autocmd  Filetype gitcommit setlocal spell textwidth=72


"与系统剪贴板共享
"set      clipboard+=unnamed
"打开拼写检查。
"set      spell
"set      backup " keep a backup file
"set      ruler
" 我的状态行显示的内容（包括文件类型和解码）
set      statusline=%f%m%r%h%w\ [enc=%{&enc}]\ [fenc=%{&fenc}]\ [format=%{&ff}]\ [type=%y]\ [pos=%l/%L行,%v列][%p%%]\ %{strftime(\"%m/%d/%y\ -\ %H:%M:%S\")}
"设置状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White


""""""""""""""""""""""""""""""
" color settings
""""""""""""""""""""""""""""""
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
" let g:seoul256_background                  = 233
" let g:molokai_original                     = 1
let g:rehash256                            = 1
if has('gui_running')
    set background=light
else
    set background=dark
endif
" set background=dark
" colorscheme molokai
" colorscheme badwolf
" colorscheme desert
colorscheme solarized
let g:solarized_termcolors=256




" General Settings
set nocompatible    " not compatible with the old-fashion vi mode
set bs=2        " allow backspacing over everything in insert mode
set history=50      " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set autoread        " auto read when file is changed from outside
syntax enable           " syntax highlight
filetype on             " Enable filetype detection
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

set hlsearch        " search highlighting
set t_Co=256            " 256 color mode
set cursorline        " highlight current line
set cursorcolumn
" highlight CursorLine guibg=#003853 ctermbg=24  gui=none cterm=none

if $TMUX == ''
    set clipboard=unnamed   " yank to the system register (*) by default
endif
set showmatch       " Cursor shows matching ) and }
set showmode        " Show current mode
set wildchar=<TAB>  " start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

set autoindent      " auto indentation
set incsearch       " incremental search
set nobackup        " no *~ backup files
set noswapfile
set copyindent      " copy the previous indentation on autoindenting
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,case-sensitive otherwise
"set smarttab       " insert tabs on the start of a line according to context
set nu                  " display line number
set nowrap              " no wrap line

" disable sound on errors
set noerrorbells
set visualbell
set tm=500

" handle space and trial
" set listchars=tab:].,trail:\|,extends:<,precedes:>
set listchars=tab:❤.,trail:☠,extends:<,precedes:>
set list

" TAB setting{
set expandtab        "replace <TAB> with spaces
set ts=4
set softtabstop=4
set shiftwidth=4

""   au FileType Makefile set noexpandtab
""}

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction


" status line {
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set guifont=Inconsolata:h20  " Not working on Mac, I don't know why :(
syntax enable


" preview window height
set previewheight=8

" Tagbar
let g:tagbar_left = 1
let g:tagbar_width = 30
autocmd VimEnter * nested :call tagbar#autoopen(0)
autocmd VimEnter * nested :TagbarOpen
let g:tagbar_autoshowtag = 1

" Airline Theme
let g:airline_theme ='dark'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0

" rebind map
let mapleader = ","
" =============== Python mode =================
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_folding = 0 " do not auto-fold.

" quick-fix window(for those who has a big monitor)
let g:pymode_quickfix_minheight = 4
let g:pymode_quickfix_maxheight = 4

" rope conf
let g:pymode_rope = 1
let g:pymode_rope_ropefolder='.ropeproject' "项目文件在的目录
let g:pymode_rope_show_doc_bind = '<C-c>d' "查阅帮助文档
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all


" python IDE
let python_highlight_all = 1

" let g:pymode = 0
"""""""""""""""""""""" vim-go """"""""""""""""""""""""""""
"au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>gd <Plug>(go-doc)

au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>e <Plug>(go-rename)

au FileType go nmap <Leader>d <Plug>(go-callees)
au FileType go nmap <Leader>c <Plug>(go-callers)
au FileType go nmap <Leader>r <Plug>(go-referrers)
au FileType go nmap <Leader>p <Plug>(go-channelpeers)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_auto_type_info = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""yntastic_go_checkers

"""""""""""""""""""" neo-complete  """"""""""""""""""""""""""""
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"""""""""""""""""""""""""" preview """""""""""""""""""""""""""""""
" ansible-vim
"autocmd BufRead,BufNewFile,BufReadPost *.yaml set syntax=ansible
"autocmd BufNewFile,BufRead,BufReadPost *.yml set syntax=ansible
"autocmd BufRead,BufNewFile,BufReadPost *.yaml setlocal ts=2 sw=2 expandtab
"autocmd BufRead,BufNewFile,BufReadPost *yml setlocal ts=2 sw=2 expandtab
autocmd FileType yaml set syntax=ansible
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:ansible_name_highlight = 'b'

autocmd FileType lua set suffixesadd=.lua



" =============== PHP Vim =================
" let g:php_syntax_extensions_enabled
" let b:php_syntax_extensions_enabled

" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
