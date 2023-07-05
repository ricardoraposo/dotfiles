syntax on

set smartindent
set termguicolors
set expandtab 
set shiftwidth=2
set tabstop=2
set softtabstop=2
set scrolloff=8
set noswapfile
set clipboard=unnamed
set foldmethod=manual
set nofoldenable
set ruler
set ruf=%45(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)

call plug#begin('~/.local/share/vim/plugins')
  Plug 'morhetz/gruvbox'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax' 
call plug#end()

let g:markdown_fenced_languages = ['bash']
let g:pandoc#formatting#mode = 'h'
let g:pandoc#formatting#textwidth = 72

syntax on
set background=dark
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
