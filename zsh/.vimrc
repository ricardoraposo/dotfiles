call plug#begin('~/.local/share/vim/plugins')
  Plug 'haishanh/night-owl.vim'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'rwxrob/vim-pandoc-syntax-simple' 
  Plug 'tpope/vim-commentary'
  Plug 'sheerun/vim-polyglot'
call plug#end()

set path+=**
set autowrite
set nowritebackup
set noswapfile
set showmode
set showcmd
set cmdheight=1
set pumheight=10
set nowrap
set smartindent
set ruler
set expandtab 
set shiftwidth=2
set tabstop=2
set softtabstop=2
set scrolloff=8
set sidescrolloff=8
set nohlsearch
set incsearch
set ignorecase
set noswapfile
set clipboard=unnamed
set foldmethod=manual
set nofoldenable
set hidden
set splitbelow
set splitright
set signcolumn=no
set foldcolumn=0
set wildmenu
set undodir=$HOME/.vim/undovim
set undofile
set nospell
set spc=
set ruf=%35(%=%#Ruler#%.50F\ [%{&ft}]\ %l:%c\ %p%%%)
set shortmess-=S

syntax on
colorscheme rwx
highlight Normal guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
highlight MatchParen ctermbg=NONE ctermfg=81

let g:markdown_fenced_languages = ['bash', 'js=javascript']
let g:pandoc#formatting#mode = 'h'
let g:pandoc#formatting#textwidth = 72
let g:pandoc#modules#disabled = ["spell"]

if has("syntax")
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc
endif

let mapleader=" "
nnoremap <leader><leader> <C-^>
nnoremap <C-c> <esc>
nnoremap <leader>sc <cmd>so %<CR>
nnoremap <leader>tu <cmd>!npx tururu<CR>
nnoremap G Gzz
nnoremap <F2> :call <SID>SynStack()<CR>
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
