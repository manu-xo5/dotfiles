call plug#begin()
  Plug 'leafgarland/typescript-vim'
  Plug 'gruvbox-community/gruvbox'
  Plug 'neovim/nvim-lspconfig'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'npm install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

let $RTC="~/.config/nvim/"
let $RC="~/.config/nvim/" . "init.vim"

filetype plugin indent on
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number
set relativenumber
set nohlsearch
set hidden
set nowrap
set noswapfile
set backspace=start,eol,indent
set nobackup
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set noerrorbells

set cmdheight=2

set updatetime=50
colorscheme gruvbox
highlight Normal guibg=none

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let mapleader=" "

