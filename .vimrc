" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

if has("autocmd")
    au BufReadPost *.rkt,*rktl set filetype=racket
    au filetype racket set lisp
    au filetype racket set autoindent
endif

"This must be here for colors to correctly in termianl
set t_Co=256

"===================================================================================
" GENERAL SETTINGS
"===================================================================================

"-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible
"
"-------------------------------------------------------------------------------
" Enable file type detection. Use the default filetype settings.
" Also load indent files, to automatically do language-dependent indenting.
"-------------------------------------------------------------------------------
filetype  plugin on
filetype  indent on
"
"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax    on            



"===================================================================================
" BUFFERS, WINDOWS
"-------------------------------------------------------------------------------
" The current directory is the directory of the file in the current window.
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif
"
"-------------------------------------------------------------------------------
" Fast switching between buffers
" The current buffer will be saved before switching to the next one.
" Choose :bprevious or :bnext
"-------------------------------------------------------------------------------
 noremap  <silent> <s-tab>       :if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
inoremap  <silent> <s-tab>  <C-C>:if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"
"-------------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif " has("autocmd")
"
"-------------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"-------------------------------------------------------------------------------
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"
"vnoremap ( s()<Esc>P<Right>%
"vnoremap [ s[]<Esc>P<Right>%
"vnoremap { s{}<Esc>P<Right>%
"
"-------------------------------------------------------------------------------
" autocomplete quotes (visual and select mode)
"-------------------------------------------------------------------------------
xnoremap  '  s''<Esc>P<Right>
xnoremap  "  s""<Esc>P<Right>
xnoremap  `  s``<Esc>P<Right>
"
"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next , ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
"set backup                      " keep a backup file
set browsedir=current           " which directory to use for the file browser
set clipboard=unnamed           " Should allow yank and paste directly to clipboard (7.4+ only)
set complete+=k                 " scan the files given with the 'dictionary' option
set encoding=utf-8
set gdefault
set hidden
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlight the last used search pattern
set ignorecase
set incsearch                   " do incremental searching
set laststatus=2
set listchars=tab:>.,eol:\$     " strings to use in 'list' mode
set modelines=0
set mouse=a                     " enable the use of the mouse
set nowrap                      " do not wrap lines
set nobackup
set popt=left:8pc,right:3pc     " print options
set relativenumber
set ruler                       " show the cursor position all the time
set scrolloff=3
set smartcase
set smartindent                 " smart autoindenting when starting a new line
set showcmd                     " display incomplete commands
set showmatch
set showmode
set title
set ttyfast
set undofile
set visualbell                  " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
set wildmode=list:longest

" Tab settings
set tabstop=4                   " number of spaces that a <Tab> counts for
set shiftwidth=4                " number of spaces to use for each step of indent
set softtabstop=4
set expandtab

"set cursorline
let mapleader = ","

nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr> " clears highlighting after search
nnoremap <tab> %
vnoremap <tab> %


set textwidth=78
set formatoptions=qrn1
"set colorcolumn=85

" Shows the non-visable characters in a file
" set list

" " Sets Vim's invisable characters same as TextMates
" set listchars=tab:?\ ,eol:¬ 

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :


"au FocusLost * :wa " save on losing focus (writes all buffers)

" The next line uses ',W' to strip all trailing whitespce in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Faster escapeing from insert mode - use jj instead of <ESC>
inoremap jj <ESC>

" " Window split commmands 
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Place all those messy files in a central place.
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp
set undodir=~/.vim-tmp

" For :E explorer mode, press i for toggling style
" d - create new directory
" % creates and opens new file
" R renames file
" o opens with horizontal split
" v opens with vertical split
let g:netrw_liststyle=3
" make little easier open
map <leader>E :E<cr>
