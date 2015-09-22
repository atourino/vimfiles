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
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/ZoomWin'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'detook/vim-composer'
Plug 'wellle/targets.vim'
Plug 'inside/vim-search-pulse'
Plug 'Keithbsmiley/investigate.vim'
Plug 'bruno-/vim-all'
Plug 'chrisgillis/vim-bootstrap3-snippets'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'atourino/vim-better-help'
" Plug 'Shougo/neocomplete.vim' Neovim does not support +lua. Yet.
Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-expand-region'
Plug 'marijnh/tern_for_vim'
Plug 'junegunn/vim-easy-align'
Plug 'evidens/vim-twig'
Plug 'sheerun/vim-polyglot'
Plug 'elixir-lang/vim-elixir'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/vim-peekaboo'
Plug 'rhysd/clever-f.vim'

Plug 'scratch.vim'
Plug 'YankRing.vim'

call plug#end()
