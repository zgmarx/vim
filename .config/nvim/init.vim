""" Optixal's Neovim Init.vim

""""""""""""""""""""""""""""""
""" Vim-Plug
""""""""""""""""""""""""""""""
" call plug#begin()
call plug#begin('~/.config/nvim/plugged/')

" For languages
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Aesthetics - Main
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/seoul256.vim'
Plug 'nightsense/forgotten'
Plug 'zaki/zazen'
Plug 'ntpeters/vim-better-whitespace'
" --------
" Plug 'ryanoasis/vim-devicons'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/vim-journal'
" Plug 'junegunn/rainbow_parentheses.vim'

" Aethetics - Additional
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'
" --------
" Plug 'nightsense/nemo'
" Plug 'yuttie/hydrangea-vim'

" Functionalities
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
" --------
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-surround'
" Plug 'alvan/vim-closetag'
" Plug 'tpope/vim-abolish'
" Plug 'honza/vim-snippets'
" Plug 'sheerun/vim-polyglot'
" Plug 'heavenshell/vim-pydocstring'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'vim-scripts/loremipsum'
" Plug 'SirVer/ultisnips'
" Plug 'metakirby5/codi.vim'
" Plug 'dkarter/bullets.vim'

" auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'

" Entertainment
"Plug 'ryanss/vim-hackernews'

call plug#end()

""""""""""""""""""""""""""""""
""" Python3 VirtualEnv
""""""""""""""""""""""""""""""
" let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

""""""""""""""""""""""""""""""
""" Coloring
""""""""""""""""""""""""""""""
syntax on
" syntax enable           " syntax highlight
color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" " Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

set textwidth=80 " 第80列红色警戒线
set colorcolumn=+1
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" "设置状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

set cursorcolumn

set cursorline " highlight current line
highlight CursorLine guibg=#003853 ctermbg=24  gui=none cterm=none
hi  CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE


""""""""""""""""""""""""""""""
""" Global Settings
""""""""""""""""""""""""""""""
set shell=/bin/sh
set foldenable
set foldmethod=manual
set foldlevel=1
set scrolloff=5 "光标到底部和顶部时保持5行距离
set history=1500 " keep 1500 lines of command line history
set ruler " show the cursor position all the time
set cmdheight=2 "命令行高度为2
set backspace=indent,eol,start "允许继续向前删除
language message en_US.UTF-8
set linebreak          "不在单词中间断行
set fo+=mB "允许汉字断行
set mouse=v "如果去掉这一行,默认值set mouse=a就生效了,这时不能用鼠标选中复制.
set tags=tags; " ctags在当前目录找不到tags文件就向父目录找
autocmd Filetype gitcommit setlocal spell textwidth=80 "git commit添加注释时设置最大宽度和自动换行
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%f%m%r%h%w\ [enc=%{&enc}]\ [fenc=%{&fenc}]\ [format=%{&ff}]\ [type=%y]\ [pos=%l/%L行,%v列][%p%%]\ %{strftime(\"%m/%d/%y\ -\ %H:%M:%S\")}
set hidden " if hidden is not set, TextEdit might fail.
set updatetime=300
set shortmess+=c " don't give |ins-completion-menu| messages.
set signcolumn=yes" " always show signcolumns
" set helplang=cn
" set ambiwidth=double # 这是什么玩意，开启的话会导致coc-go的提示异常！
" set langmenu=zh_CN.UTF-8
" set nocp "使用VIM不兼容模式
" set      foldmethod=indent
"set t_Co=256            " 256 color mode
set nocompatible    " not compatible with the old-fashion vi mode
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent " TAB setting
" set smarttab       " insert tabs on the start of a line according to context
set incsearch ignorecase smartcase hlsearch " search highlighting
filetype plugin indent on " Enable filetype detection, filetype-specific indenting plugins
" status line
set laststatus=2 showcmd showmode
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

set list listchars=trail:☠,tab:»- " handle space and trial
" set list listchars=tab:❤.,trail:☠,extends:<,precedes:>
set fillchars+=vert:\ 
set wrap breakindent

" encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set title
set nu                  " display line number
set showmatch       " cursor shows matching ) and }
set wildchar=<tab>  " start wild expansion in the command line using <tab>
set wildmenu            " wild char completion menu
set bs=2        " allow backspacing over everything in insert mode
set autoread        " auto read when file is changed from outside
set wildignore=*.o,*.class,*.pyc " ignore these files while expanding wild chars
set nobackup        " no *~ backup files
set noswapfile
set copyindent      " copy the previous indentation on autoindenting
set noerrorbells visualbell tm=500 " disable sound on errors
set previewheight=8 " preview window height

" au Filetype Makefile set noexpandtab
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

if $TMUX == ''
    set clipboard=unnamed   " yank to the system register (*) by default
endif

" get VIM to remember the line I was on when I reopen a file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

""""""""""""""""""""""""""""""
""" Plugin Configurations
""""""""""""""""""""""""""""""
" =============== Tagbar =================
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" =============== Airline =================
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
let g:airline_theme ='dark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1

" =============== vim-easy-align =================
set cino+=(0 " align multiple line arguments
xmap al <Plug>(EasyAlign)
nmap al <Plug>(EasyAlign)
let g:easy_align_delimiters = {
\ '\': {
\     'pattern':         '\\$'
\  },
\  '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment']
\  },
\ }

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
  autocmd Filetype php call PhpSyntaxOverride()
augroup END

" =============== ansible-vim ==============
" ansible-vim
"autocmd BufRead,BufNewFile,BufReadPost *.yaml set syntax=ansible
"autocmd BufNewFile,BufRead,BufReadPost *.yml set syntax=ansible
"autocmd BufRead,BufNewFile,BufReadPost *.yaml setlocal ts=2 sw=2 expandtab
"autocmd BufRead,BufNewFile,BufReadPost *yml setlocal ts=2 sw=2 expandtab
" au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd Filetype yaml set syntax=ansible
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:ansible_name_highlight = 'b'

autocmd Filetype lua set suffixesadd=.lua

" =============== vim-go ==============
"au Filetype go nmap <leader>r <Plug>(go-run)
" au Filetype go nmap <leader>b <Plug>(go-build)
" au Filetype go nmap <leader>t <Plug>(go-test)
" "au Filetype go nmap <leader>c <Plug>(go-coverage)
" au Filetype go nmap <Leader>gd <Plug>(go-doc)
" au Filetype go nmap <Leader>s <Plug>(go-implements)
" au Filetype go nmap <Leader>i <Plug>(go-info)
" au Filetype go nmap <Leader>e <Plug>(go-rename)
" au Filetype go nmap <Leader>d <Plug>(go-callees)
" au Filetype go nmap <Leader>c <Plug>(go-callers)
" au Filetype go nmap <Leader>r <Plug>(go-referrers)
" au Filetype go nmap <Leader>p <Plug>(go-channelpeers)

au Filetype go nmap <Leader>d <Plug>(go-doc-vertical)
au Filetype go nmap <Leader>b <Plug>(go-build)
au Filetype go nmap <Leader>l <Plug>(go-metalinter)


let g:go_code_completion_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_auto_type_info = 1         " Automatically get signature/type info for object under cursor
let g:go_fmt_command = "goimports"  " Run goimports along gofmt on each save

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

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

let python_highlight_all = 1 " python IDE
" let g:pymode = 0

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Deoplete
let g:deoplete#enable_at_startup = 1
" Disable documentation window
set completeopt-=preview
"去掉预览窗口preview和设置longest
" set completeopt=menu,longest

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

" indentLine
" let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
let g:indentLine_faster = 1
let g:indentLine_char = '|'
let g:indentLine_color_gui = '#363949'

" fzf-vim
" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-s': 'split',
"   \ 'ctrl-v': 'vsplit' }
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'Type'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Character'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }


""""""""""""""""""""""""""""""
""" Filetype-Specific Configurations
""""""""""""""""""""""""""""""
" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2


""""""""""""""""""""""""""""""
""" Custom Functions
""""""""""""""""""""""""""""""
" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme=''
    color dracula
    IndentLinesEnable
endfunction

" Seoul256 Mode (Dark & Light)
function! ColorSeoul256()
    let g:airline_theme='silver'
    color seoul256
    IndentLinesDisable
endfunction

" Forgotten Mode (Light)
function! ColorForgotten()
    " Light airline themes: tomorrow, silver, alduin
    " Light colors: forgotten-light, nemo-light
    let g:airline_theme='tomorrow'
    color forgotten-light
    IndentLinesDisable
endfunction

" Zazen Mode (Black & White)
function! ColorZazen()
    let g:airline_theme='badcat'
    color zazen
    IndentLinesEnable
endfunction


""""""""""""""""""""""""""""""
""" Custom Mappings
""""""""""""""""""""""""""""""
let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>w :TagbarToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e3 :call ColorForgotten()<CR>
nmap <leader>e4 :call ColorZazen()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>s <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
nmap <leader>d <Plug>(pydocstring)
nmap <leader>f :Files<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
" autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
" nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>


" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc


""""""""""""""""""""""""""""""
" keybind setting
""""""""""""""""""""""""""""""
" vnoremap <Enter> <Plug>(EasyAlign)
nnoremap <silent><C-d> :bd<CR> :syntax on<CR>
nnoremap <silent><Tab> :bn<CR>
nnoremap <silent><S-Tab> :bp<CR>
"用空格键来打开/关闭折叠
nnoremap <silent><space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" noremap <Up> :!sudo ls /<CR>


" NERDTree plugin specific commands "开关文件浏览器
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
" F10 设置黏贴模式
noremap <silent><F10> :set paste<CR>
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
nmap <Leader>m :message<CR>
" Run python code (<leader>r)
" Add/remove breakpoints (<leader>b)
" Search in python documentation (K)
" Code refactoring <rope refactoring library> (rope)
" Strong code completion (rope)
" Go to definition (<C-c>g for :RopeGotoDefinition)
