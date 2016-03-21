" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn


" chinese garbled
"设置文件的代码形式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,gbk

"vim的菜单乱码解决：
"同样在 _vimrc文件里以上的中文设置后加上下列命令，
  source $VIMRUNTIME/delmenu.vim
  source $VIMRUNTIME/menu.vim

"vim提示信息乱码的解决
language messages zh_CN.utf-8

"解决vim 退格键（backspace）不能用
"这是因为有时候系统会默认vim兼容vi，所以使用vi的命令。
set backspace=2

"如何查看
set history=50


" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

"显示行号
set number


" Need confrimation while exit
set confirm

" Softtabs, 2 spaces
"set tabstop=2
"set shiftwidth=2
"set shiftround
"set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·


" set color and front
syntax enable
syntax on
set helplang=cn
set t_Co=256
set background=dark
colorscheme monokai
set guifont=Consolas:h16




"start position
cd F:\aaatest





"plugin

filetype off
" 此处规定Vundle的路径
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')


"NERDTree
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=10
map <F2> :NERDTreeToggle<CR>

"Tagbar
Bundle 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()     "如果是c语言的程序的话，tagbar自动开启


"状态栏
Bundle 'bling/vim-airline'
set laststatus=2


















filetype plugin indent on

" original repos on github<br>Bundle 'mattn/zencoding-vim'


" vim-scripts repos


filetype plugin indent on     " required!
