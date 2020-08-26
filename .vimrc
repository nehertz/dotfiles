syntax on
colo sitruuna

set nocompatible
set backspace=indent,eol,start
set clipboard=unnamed
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4 
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set incsearch

set laststatus=2
set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim

inoremap <S-Tab> <C-d>

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
call plug#end()
