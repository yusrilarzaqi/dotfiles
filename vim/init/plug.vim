call plug#begin("~/.vim/plugged")
" Comment stuff out
Plug 'tpope/vim-commentary'

" Mark downn
Plug 'tpope/vim-markdown' 
Plug 'tpope/vim-sensible'

" Git
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'

" CSS COLOR 
Plug 'ap/vim-css-color'

" Presenting Markdown
Plug 'sotte/presenting.vim'

" snippet
Plug 'honza/vim-snippets'

" Indent
" Plug 'yggdroot/indentline'
" Indent Guides is a plugin for visually displaying indent levels in Vim.
Plug 'nathanaelkane/vim-indent-guides'

" COC Auto Complate
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" JSX
Plug 'mxw/vim-jsx'
Plug 'chemzqm/vim-jsx-improve'

Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'

" AIRLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim Highlight
Plug 'sheerun/vim-polyglot'

" icon
Plug 'ryanoasis/vim-devicons'

" Colorscheme
Plug 'flazz/vim-colorschemes'
Plug 'ghifarit53/tokyonight-vim' " Tokyonight
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' } " Aquarium
Plug 'arcticicestudio/nord-vim'

" Startify Plugin
Plug 'mhinz/vim-startify'
call plug#end()
