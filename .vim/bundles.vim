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
" vim-snipmate depends on the preceeding bundles
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'tomtom/tlib_vim.git'
Bundle 'garbas/vim-snipmate'
" vim-snipmate depends on the preceeding bundles
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
Bundle 'kchmck/vim-coffee-script'
Bundle 'Raimondi/delimitMate'
Bundle 'mattn/zencoding-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/vimplenote-vim'
Bundle 'Lokaltog/vim-powerline'

Bundle 'bufexplorer.zip'
Bundle 'scratch.vim'


filetype plugin indent on
