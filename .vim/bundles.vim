if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Load vundle to manage other plugins
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/ZoomWin'
Plug 'othree/html5.vim'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'kien/ctrlp.vim'
Plug 'detook/vim-composer'
Plug 'mihaifm/bufstop'
Plug 'wellle/targets.vim'
Plug 'saihoooooooo/glowshi-ft.vim'
Plug 'inside/vim-search-pulse'
Plug 'Keithbsmiley/investigate.vim'
Plug 'bruno-/vim-all'
Plug 'chrisgillis/vim-bootstrap3-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'jbgutierrez/vim-partial'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'atourino/vim-better-help'
Plug 'evidens/vim-twig'
Plug 'Shougo/neocomplete.vim'
Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-expand-region'
Plug 'Yggdroot/indentLine'
Plug 'marijnh/tern_for_vim'
Plug 'junegunn/vim-easy-align'

Plug 'scratch.vim'
Plug 'bufexplorer.zip'
Plug 'YankRing.vim'

call plug#end()
