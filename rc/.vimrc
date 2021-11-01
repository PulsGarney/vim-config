" ========  基本设置  =====================================

" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

" use mouse everywhere
set mouse=a

" 行号
set number

" 文件类型
filetype plugin indent on

" 历史行数
set history=4096

" 背景
set t_Co=256
"set background=dark

" 语法高亮度显示
syntax enable

" 高亮行
set cursorcolumn
set cursorline

" 自动对齐、智能对齐
set autoindent
set smartindent

" 设置tab键为4个空格
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 匹配模式，匹配相应的括号
set showmatch

" 去掉错误响声
set noeb

" vim 自身命令行模式智能补全
set wildmenu

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 匹配高亮
set hls

" 快速匹配
set incsearch

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 不要用空格代替制表符
" set noexpandtab
set expandtab

" 在行和段开始处使用制表符
" set smarttab

" 禁止生成临时文件
set nobackup
set noswapfile

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" Backspace
set backspace=indent,eol,start

" Leader
let mapleader = ","

" copy to system
" noremap <Leader>y "*y
" noremap <Leader>Y "+y
" noremap <Leader>p "*p
" noremap <Leader>P "+p
:vmap <C-c> "+y
:vmap <C-v> "+p

" Change default refresh time
set updatetime=200


" ========  插件配置  =====================================

" ======== Vim-plug ========

call plug#begin('~/.vim/plugged')

" Function - Coc
Plug 'git://github.com/neoclide/coc.nvim.git', {'branch': 'release'}

" Colour - Material
Plug 'git://github.com/kaicataldo/material.vim.git', { 'branch': 'main' }

" Git - Fugitive
Plug 'git://github.com/tpope/vim-fugitive.git'

" Git - Gitgutter
Plug 'git://github.com/airblade/vim-gitgutter.git'

" Function - Multiple Cursors
Plug 'git://github.com/terryma/vim-multiple-cursors.git'

" Interface - Status Bar
Plug 'git://github.com/vim-airline/vim-airline.git'
Plug 'git://github.com/vim-airline/vim-airline-themes.git'

call plug#end()


" ======== Coc ========

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <Ctrl-F> to format documents with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <C-F> :Prettier<CR>

" Use <Space-E> to open explorer
" Using Coc-explorer
noremap <space>e :CocCommand explorer<CR>
" Close Coc-explorer if it is the only window
autocmd BufEnter * if (&ft == 'coc-explorer' && winnr("$") == 1) | q | endif

" Open Command list with Ctrl Shift P
noremap <C-P> :CocList commands<CR>


" ======== Material ========

" let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'

let g:material_terminal_italics = 0
let g:material_theme_style = 'default-community'

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

colorscheme material


" ======== FZF ========

set rtp+=/usr/local/opt/fzf
noremap <Leader>f :CocCommand fzf-preview.ProjectFiles<CR>


" ======== Air Line ========

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'

