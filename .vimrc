" [GENERAL]
set nocompatible
set backspace=indent,eol,start
set clipboard=unnamed
set noerrorbells
set complete+=kspell
set completeopt=menuone,longest

" [THEME]
syntax on
colo forest-night

" [FORMATTING]
set tabstop=4 softtabstop=4
set shiftwidth=4 
set expandtab
set smartindent
set nu
set wrap
set linebreak
" set breakat
set breakindent
set smartcase
set splitbelow
set splitright

" [MISC]
set noswapfile
set incsearch
" set shortmess=a
" set cmdheight=2

set laststatus=2
set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmsvg/pear-tree'
Plug 'vim-scripts/AutoComplPop'
Plug 'wikitopian/hardmode'
Plug 'sainnhe/forest-night'
call plug#end()

" [REMAPS]
inoremap <S-Tab> <C-d>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <Tab> pumvisible() ? "<C-y>" :"<Tab>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

" [HARDMODE]
let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
