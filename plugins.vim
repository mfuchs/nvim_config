" ==========================================================
" Plugins
"
" https://github.com/junegunn/vim-plug
" ==========================================================
call plug#begin('~/.config/nvim/plugged')
    Plug 'ervandew/supertab'

    " Snippets
    Plug 'sirver/ultisnips'

    " Auto Completion
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'davidhalter/jedi'
    Plug 'zchee/deoplete-clang'
    Plug 'zchee/deoplete-jedi'

    " Fuzzy Completion, similar to ctrlp.vim
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Syntax Checking
    Plug 'neomake/neomake'

    " Statusbar
    Plug 'bling/vim-airline'

"    " YouCompleteMe
"    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
"

call plug#end()

" ==========================================================
" Deoplete
" ==========================================================
let g:deoplete#enable_at_startup = 1

" Clang
" TODO make this configurable, maybe via ansible!
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

" ==========================================================
" Neomake Settings
" ==========================================================

" Ensure that every write leads to a Neomake run
autocmd! BufWritePost * Neomake

" Symbol and style to use for warnings
let g:neomake_warning_sign={'text': '>>', 'texthl': 'Todo'}

" Symbol and style to use for errors
let g:neomake_error_sign={'text': '>>', 'texthl': 'ErrorMsg'}

" ==========================================================
" SuperTab
" ==========================================================
let g:SuperTabDefaultCompletionType = "<c-n>"

" ==========================================================
" UltiSnips
" ==========================================================
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"