set nocompatible

filetype off

" Load vundle to manage other plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-endwise' 
Bundle 'atourino/jinja.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-markdown'
Bundle 'hallison/vim-ruby-sinatra'
Bundle 'tpope/vim-surround'
Bundle 'chrismetcalf/vim-yankring'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-unimpaired'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/gist-vim'
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/ZoomWin'
Bundle 'othree/html5.vim'
Bundle 'bufexplorer.zip'


filetype plugin indent on
