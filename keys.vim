" ==========================================================
" General
" ==========================================================
set pastetoggle=<F11>       " do not intend pasting
map <space> <leader>|         " use space as leader character

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>


" ==========================================================
" Working Directory
" ==========================================================
" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" ==========================================================
" Windows/Tabs
" ==========================================================
nnoremap <leader>q :q<CR>|   " Quit window
nmap <leader>c :copen<CR>|   " Open quickfix window
nmap <leader>cc :cclose<CR>| " Close quickfix window
nmap <leader>l :lopen<CR>|   " Open location list window
nmap <leader>ll :lclose<CR>| " Close location list window window

" Close current tab
nnoremap <leader>tc :tabclose<CR>

" ==========================================================
" Spell Checking
" ==========================================================
" en_gb
nnoremap <leader>suk :set spell spelllang=en_gb<CR>

" en_us
nnoremap <leader>sus :set spell spelllang=en_us<CR>

" off
nnoremap <leader>so :set nospell<CR>

" ==========================================================
" Fuzzy Finder fzf
" ==========================================================
" open files
nnoremap <silent> <Leader>ff :Files<CR>

" open files of git repo
nnoremap <silent> <Leader>fg :GFiles<CR>

" search previous files and buffers
nnoremap <silent> <Leader>fh :History<CR>

" ==========================================================
" Clang Tools
" ==========================================================
execute "noremap <leader>cr :pyf " . g:mat#clang_rename_py_path . "<cr>"
