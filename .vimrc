" Use jj as Escape
inoremap jj <Esc>

" Turn off audio bell
set visualbell
" Deactivate flashing
set t_vb=

" Hybrid line numbers
set number relativenumber

" Enable colors
set t_Co=256

" Always show status line
set laststatus=2

" Smart tabbing/autoindent
set autoindent
set copyindent

" Allow backspace over newlines
set backspace=indent,eol,start

" Bloomberg uses 4 spaces to indent
set tabstop=8 " Display actual tab characters as 8 spaces
set softtabstop=4 " Pressing the tab key inserts 4 spaces
set expandtab " Insert spaces not tabs
set shiftwidth=4 " The <,> commands and similar use 4 spaces

" Highlight matching parens
set showmatch 

" Search
set hlsearch " Highlight all search matches
set smartcase " Search is case-insensitive unless caps are present
set incsearch " Highlight matching patterns as search is typed

" Move by visual line, not actual line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Display tab completion options in status bar
set wildmenu
set showcmd

" Syntax highlighting
syntax on

" File specific plugins/indent
filetype plugin indent on

" Split below and to the right like tmux et al
set splitbelow
set splitright

" colorscheme
colorscheme darcula

" manually specify cursor for putty
if exists('$TMUX')
    let &t_SI .= "\ePtmux;\e\e[=1c\e\\"
    let &t_EI .= "\ePtmux;\e\e[=2c\e\\"
 else
    let &t_SI .= "\e[=1c"
    let &t_EI .= "\e[=2c"
 endif
" put some lines at the bottom
set scrolloff=10
