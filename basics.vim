" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
"set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=longest,list,full " <Tab> matches as much as possible,
                               " second <Tab> shows a list of availabe
                               " third and consecutive <Tab> move through that list

" don't bell or blink
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Disable the colorcolumn when switching modes.  Make sure this is the
" first autocmd for the filetype here
"autocmd FileType * setlocal colorcolumn=0

" ==========================================================
" Linenumbers
" ==========================================================
set number                    " Display line numbers

" have number count from current position
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu

" ==========================================================
" Moving Around/Editing
" ==========================================================
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set showmatch               " Briefly jump to a paren once it's balanced
set wrap                    " Wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set shiftround              " rounds indent to a multiple of shiftwidth
set formatoptions=tcroql    " Setting text and comment formatting to auto
"set textwidth=80            " lines are automatically wrapped after 80 columns
set nofoldenable            " turn off folding

" ==========================================================
" Whitespace
" ==========================================================
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set tabstop=4               " <tab> inserts 4 spaces
set shiftwidth=4            " And an indent level is 4 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes all spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.

" ==========================================================
" Reading/Writing
" ==========================================================
set autowriteall            " Don't bother me about changed buffers
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.

" ==========================================================
" Messages, Info, Status
" ==========================================================
set ls=2                    " always show status line
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without status lines.
set laststatus=2            " Always show status line, even if only 1 window.

" ==========================================================
" Searching and Patterns
" ==========================================================
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" turns highlight search on/off
"nnoremap <leader><space> :set hlsearch!<cr>

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**


