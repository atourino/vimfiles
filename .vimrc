
source ~/.vim/bundles.vim

" Map space as leader key
let mapleader = "\<Space>"


" Plugin settings
" ===============

" Vim search pulse
let g:vim_search_pulse_mode = 'pattern'

" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings"
nmap s <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

" Investigate.vim
let g:investigate_use_dash = 1
nnoremap <leader>K :call investigate#Investigate()<CR>

" fzf/skim bindings
nnoremap <silent> <leader>o :Files<CR>
nnoremap <silent> <leader>O :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>

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
set linebreak
set more                       " Use more prompt
set nobackup                   " Don't back anything up. Use git.
set nowritebackup              " Ditto
set noswapfile                 " Disable swap files: because I like living on the edge...
set numberwidth=5              " Width of number column
set number                     " Enable line numbering
set scrolloff=5                " Keep at least 5 lines above/below
set showmatch                  " Show matching brackets (jump to the matching one)
set sidescrolloff=5            " Keep at least 5 lines left/right
set title                      " Sets the terminal's title
set undolevels=1000            " 1000 undos
set virtualedit=all            " Allow the cursor to go in to 'invalid' places
set nowildmenu                 " Enhanced mode for command completion
set hidden
set splitright
set splitbelow
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256

set noshowcmd                  " Display incomplete commands on last line of screen
set noshowmode                 " Display whether on insert, replace, or visual mode

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full


" Search
nnoremap / /\v
vnoremap / /\v
set hlsearch                   " Highlight search terms
set ignorecase                 " Case insensitive
set incsearch                  " Do incremental searching
set smartcase                  " Override the 'ignorecase' option if the search pattern contains upper case characters.
set gdefault                   " Make search global (line)
nnoremap <silent> <F4> :nohlsearch<Bar>:echo<CR>
nmap <tab> %
vmap <tab> %
" Keeps search hit in center of screen
nnoremap n nzz
nnoremap N Nzz

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
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Use the 'hjkl' keys
nnoremap <up> <Nop>
nnoremap <down> <Nop>
nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap j gj
nnoremap k gk

" <tab> / <s-tab> | Circular windows navigation
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" Add a semicolon to the current line without moving the cursor with <Leader>;
nnoremap <Leader>; m'A;<ESC>`'

" Highlighting
if &t_Co >= 256 || has('gui_running')
    set background=dark
    colorscheme gruvbox
    if (has("termguicolors"))
        set termguicolors
    endif
endif

if &t_Co > 2 || has('gui_running')
    syntax enable                    " switch syntax highlighting on, when the terminal has colors
endif

" No Help, please
nmap <F1> <Esc>

" Clean whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
map <leader>W :call <SID>StripTrailingWhitespaces()<CR>
autocmd BufWritePre *.vim,*.py,*.js,*.css,*.php,*.html,*.sass,*.twig :call <SID>StripTrailingWhitespaces()

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

" Move lines up or down
nnoremap <leader>lj :m .+1<CR>==
nnoremap <leader>lk :m .-2<CR>==
vnoremap <leader>lj :m '>+1<CR>gv=gv
vnoremap <leader>lk :m '<-2<CR>gv=gv''

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

    if has('win32')
        set guifont=Consolas:h10             " Font
        au GUIEnter * simalt ~x
    else
        "set guifont=Liberation_Mono_Regular:h12.00 " Font
        "set guifont=Inconsolata-dz\ for\ Powerline:h10.00             " Font
    endif
    set clipboard=unnamed                      " Use the clipboard register '*' for all yank, delete, change and put operations
    set go-=m                                  " No menubar
    set go-=T                                  " No toolbar

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
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
