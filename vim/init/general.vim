set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

set autoread
set clipboard=unnamedplus
set mouse=a
set number
set relativenumber
set ruler
syntax enable
set title
set encoding=utf-8
set cursorline
set autoindent
set hidden
set smartindent
set nowrap
set noswapfile
set ttyfast
set t_co=256
set shell=/usr/bin/fish
set expandtab

" Set tab width to 2 columns.
set tabstop=2
set softtabstop=2

" Set shift width to 2 spaces.
set shiftwidth=2

set smarttab
set scrolloff=7
set showtabline=2 " 2

" Height cmd 1
set cmdheight=1

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
" set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" disable beep on errors.
set noerrorbells

" [DISABLED] flash the screen instead of beeping on errors.
set novisualbell

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" For Vim<8, replace EndOfBuffer by NonText
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

" Markdown
"let g:markdown_syntax_connceal = 0

" Set Cursor 
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Makes popup menu smaller
set pumheight=10

" Horizontal splits will automatically be below
set splitbelow

" Vertical splits will automatically be to the right
set splitright

" So that I can see `` in markdown files
set conceallevel=0

" Always display the status line
set laststatus=0

" Automaticy restart when write polybar, i3 configuration
autocmd BufWritePost config :!i3 restart



