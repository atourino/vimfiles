if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Load vundle to manage other plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-endwise'
if executable('git')
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
endif
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'wellle/targets.vim'
Plug 'inside/vim-search-pulse'
Plug 'Keithbsmiley/investigate.vim'
Plug 'vim-utils/vim-all'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'rhysd/clever-f.vim'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Always load last.
Plug 'ryanoasis/vim-devicons'

call plug#end()
