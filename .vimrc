
source ~/.vim/bundles.vim

let mapleader = ","



" Plugin settings
" ===============

" Ack
map <leader>f :Ack! 

" Snipmate
let g:snippets_dir = $HOME.'/.vim/snippets/'

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_jump=0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_disabled_filetypes = ['html']

" Ragtag
let g:ragtag_global_maps = 1

" Yankring
nnoremap <silent> <F3> :YRShow<cr>

" Easymotion
let g:EasyMotion_leader_key = '<Leader>m'

" Tagbar
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nnoremap <silent> <F9> :TagbarToggle<CR>

" Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Tabular
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>aa :Tabularize /=><CR>
vmap <Leader>aa :Tabularize /=><CR>

" ZoomWin
nnoremap <silent> <Leader><Leader> :ZoomWin<CR>




" General Customizations
" ======================

" Security
set modelines=0  " Disable modelines in files [http://www.guninski.com/vim1.html]


" Basic Options
set autoindent                 " Copy indent of prev line to the new line
set autoread                   " Read file changes if file hasn't been modified in vim
set autowriteall               " Write changes to file on any buffer switch
set backspace=indent,eol,start " Allow backspacing over everything in insert mode
set cmdheight=2                " Command line two lines high
set encoding=utf-8             " Use UTF-8 encoding
set history=50                 " Keep 50 lines of command line history
set linebreak                  " 
set more                       " Use more prompt
set nobackup                   " Don't back anything up. Use git.
set nowritebackup              " Ditto
set noswapfile                 " Disable swap files: because I like living on the edge...
set numberwidth=5              " Width of number column
set pastetoggle=<F2>           " When in insert mode, press <F2> to go to
                               "    paste mode, where you can paste mass data
                               "    that won't be autoindented
if exists("+relativenumber")
    nnoremap <silent> <Leader>r :set relativenumber<CR>
    nnoremap <silent> <Leader>n :set number<CR>
endif
set number                     " Enable line numbering
set ruler                      " Show the line and column number of the cursor position, separated by a comma.
set scrolloff=5                " Keep at least 5 lines above/below
set showcmd                    " Display incomplete commands on last line of screen
set showmatch                  " Show matching brackets (jump to the matching one)
set showmode                   " Display whether on insert, replace, or visual mode
set sidescrolloff=5            " Keep at least 5 lines left/right
set title                      " Sets the terminal's title
set undolevels=1000            " 1000 undos
set virtualedit=all            " Allow the cursor to go in to 'invalid' places
set nowildmenu                   " Enhanced mode for command completion
set hidden
set splitright
set splitbelow

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full



" Shouldn't need shift
nnoremap ; :

" Search
nnoremap / /\v
vnoremap / /\v
set hlsearch                   " Highlight search terms
set ignorecase                 " Case insensitive
set incsearch                  " Do incremental searching
set smartcase                  " Override the 'ignorecase' option if the search pattern contains upper case characters.
set gdefault                   " Make search global (line)
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nmap <tab> %
vmap <tab> %

" Tabs/spaces
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>

" From the Vim wiki. Turn off ALL bells
set noerrorbells
set t_vb=                      " Set visual bell to nothing
set visualbell

" Use the 'hjkl' keys
nnoremap <up> <Nop>
nnoremap <down> <Nop>
nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Always display the status line and format it
set laststatus=2
if has('statusline')
  function! SetStatusLineStyle()
    let &stl="%f %y "                       .
            \"%([%R%M]%)"                   .
            \"%#StatusLineNC#%{&ff=='unix'?'':&ff.'\ format'}%*" .
            \"%{'$'[!&list]}"               .
            \"%{'~'[&pm=='']}"              .
            \"%{exists('g:loaded_fugitive')?fugitive#statusline():''}" .
            \"%="                           .
            \"#%n %l/%L,%c%V "              
  endfunc
  call SetStatusLineStyle()

  if has('title')
    set titlestring=%t%(\ [%R%M]%)
  endif
endif

" Highlighting
if &t_Co >= 256 || has('gui_running')
   set background=dark
   colorscheme solarized
endif

if &t_Co > 2 || has('gui_running')
   syntax on                    " switch syntax highlighting on, when the terminal has colors
endif

" No Help, please
nmap <F1> <Esc>

" Sort CSS
map <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:let @/=''<CR>

" Clean whitespace
map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Faster Esc
inoremap <Esc> <nop>
inoremap jj <ESC>

" use ctrl-space instead of ctrl-x ctrl-o for autocompletion
imap <c-space> <c-x><c-o>

" Use Q for formatting the current paragraph (or visual selection)
vmap Q gq
nmap Q gqap

" Edit the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Save when losing focus
au FocusLost * :wa

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Try to get the correct main terminal type
if &term =~ "xterm"
    let myterm = "xterm"
else
    let myterm =  &term
endif

" xterm but without activated keyboard transmit mode
" and therefore not defined in termcap/terminfo.
if myterm == "xterm" || myterm == "kvt" || myterm == "gnome"
    " keys in insert/command mode.
    map! <Esc>[H  <Home>
    map! <Esc>[F  <End>
    " Home/End: older xterms do not fit termcap/terminfo.
    map! <Esc>[1~ <Home>
    map! <Esc>[4~ <End>
    " Up/Down/Right/Left
    map! <Esc>[A  <Up>
    map! <Esc>[B  <Down>
    map! <Esc>[C  <Right>
    map! <Esc>[D  <Left>
    " KP_5 (NumLock off)
    map! <Esc>[E  <Insert>
    " PageUp/PageDown
    map <ESC>[5~ <PageUp>
    map <ESC>[6~ <PageDown>
    map <ESC>[5;2~ <PageUp>
    map <ESC>[6;2~ <PageDown>
    map <ESC>[5;5~ <PageUp>
    map <ESC>[6;5~ <PageDown>
    " keys in normal mode
    map <ESC>[H  0
    map <ESC>[F  $
    " Home/End: older xterms do not fit termcap/terminfo.
    map <ESC>[1~ 0
    map <ESC>[4~ $
    " Up/Down/Right/Left
    map <ESC>[A  k
    map <ESC>[B  j
    map <ESC>[C  l
    map <ESC>[D  h
    " KP_5 (NumLock off)
    map <ESC>[E  i
    " PageUp/PageDown
    map <ESC>[5~ 
    map <ESC>[6~ 
    map <ESC>[5;2~ 
    map <ESC>[6;2~ 
    map <ESC>[5;5~ 
    map <ESC>[6;5~ 
endif



" GUI
" ===

if has('gui_running')

    "set guifont=Liberation_Mono_Regular:h12.00 " Font
    set guifont=Inconsolata:h12.00             " Font
    set go-=T                                  " No toolbar
    set clipboard=unnamed                      " Use the clipboard register '*' for all yank, delete, change and put operations

    " Hide scrollbars
    set go-=l
    set go-=L
    set go-=r
    set go-=R
    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif


" Filetypes. These should really be in their own files...
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.mustache        setf mustache
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
