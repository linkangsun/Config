set nu
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on 
