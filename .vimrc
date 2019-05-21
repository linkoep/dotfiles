set nocompatible
filetype plugin indent on

colorscheme molokai
set background=dark " sets dark background
set number " adds line numbers
set numberwidth=5 " width of line numbers
set scrolloff=5 " gives lines below cursor
set ignorecase " ignores case in searches
set smartcase " searches become case-sensitive when you type uppercase
set hlsearch " Highlight search terms

" disable arrow keys to force me to learn
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jj <Esc>

" get rid of those pesky ~ files
set nobackup
set nowritebackup
set noswapfile

" always show cursor position
set ruler

set showcmd " display incomplete commands
set autowrite "automatically write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" set syntax highlights for specific files
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" make backspace be able to delete line breaks and past beginning of insert
set backspace=indent,eol,start

set laststatus=2                      " Show status line on startup

set nowrap                            " Don't wrap long lines
set listchars=extends:→               " Show arrow if line continues rightwards
set listchars+=precedes:←             " Show arrow if line continues leftwards

" disable annoying beeps
set noerrorbells visualbell t_vb=

"configure netrw default file browser
let g:netrw_liststyle = 3 "Tree view
let g:netrw_banner = 0 "Take away header
let g:netrw_browse_split = 4 "Open files in previous window
let g:netrw_winsize = 20 "Window is 25% of page

set autoindent
set smartindent
set cindent
set shiftwidth=2
set tabstop=2

" Attempt to be able to copy to global clipboard
set clipboard=unnamed

" Use hybrid line numbers
set number relativenumber

" configure markdown preview
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=2

set nrformats=alpha "allow incrementing of characters with ctrl-a
nnoremap sw( dwi(<Esc>pa)<Esc>
nnoremap sw[ dwi[<Esc>pa]<Esc>
nnoremap sw{ dwi{<Esc>pa}<Esc>


nnoremap S :!pdflatex %<CR><CR>:!open %:r.pdf<CR><CR>
