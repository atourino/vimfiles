if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Load vundle to manage other plugins
call plug#begin('~/.vim/plugged')

" **************************
" Development specific tools
" **************************
if executable('git')
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
endif
Plug 'rizzatti/dash.vim'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'sheerun/vim-polyglot'

" ***************************************
" General editing experience improvements
" ***************************************
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Complementary sets of mappings.
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
" Close quotes, parens, brackets automatically.
Plug 'Raimondi/delimitMate'
Plug 'wellle/targets.vim'
Plug 'inside/vim-search-pulse'
Plug 'junegunn/vim-peekaboo'
Plug 'rhysd/clever-f.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tommcdo/vim-exchange'
Plug 'dbakker/vim-paragraph-motion'
Plug 'vim-utils/vim-all'

" ****************
" Cosmetic Plugins
" ****************
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
" Always load last.
Plug 'ryanoasis/vim-devicons'

call plug#end()
