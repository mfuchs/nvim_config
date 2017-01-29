" ==========================================================
" Info
" ==========================================================
" See http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
" for a list of colors.

" ==========================================================
" Overrides
" ==========================================================
" grey comments
highlight Comment ctermfg=246 guifg=#8D8D8D
" brown strings
highlight String ctermfg=130 guifg=#B7603D

" ==========================================================
" Qt
" ==========================================================
" emit and connect
highlight QtEmit    ctermfg=33 guifg=#2E6D8B gui=bold
highlight QtConnect ctermfg=33 guifg=#2E6D8B gui=bold

function! QtHighlight()
    syntax keyword QtEmit       emit
    syntax keyword QtConnect    connect
endfunction

autocmd BufWinEnter *.cpp call QtHighlight()
autocmd BufWinEnter *.h call QtHighlight()

" ==========================================================
" Log Files
" ==========================================================
highlight LogWarning  ctermfg=172    guifg=DarkYellow
highlight LogError    ctermfg=red    guifg=red
highlight LogFatal    ctermfg=red    guifg=red
highlight LogInfo     ctermfg=blue   guifg=blue
highlight LogWarning2 ctermfg=172    guifg=DarkYellow
highlight LogError2   ctermfg=red    guifg=red
highlight LogInfo2    ctermfg=blue   guifg=blue

command! -nargs=0 AVLog call AVLogHighlight()
function! AVLogHighlight()
    syntax match LogWarning  /^\d\{2\}:\d\{2\}:\d\{2\} WARNING:.*$/
    syntax match LogError    /^\d\{2\}:\d\{2\}:\d\{2\} ERROR:.*$/
    syntax match LogFatal    /^\d\{2\}:\d\{2\}:\d\{2\} FATAL:.*$/
    "syntax match LogInfo     /^\d\{2\}:\d\{2\}:\d\{2\} INFO:.*$/
    syntax match LogWarning2 /^\d\{2\}:\d\{2\}:\d\{2\} -
\d\{2\}:\d\{2\}:\d\{2\} WARNING:.*$/
    syntax match LogError2   /^\d\{2\}:\d\{2\}:\d\{2\} -
\d\{2\}:\d\{2\}:\d\{2\} ERROR:.*$/
    "syntax match LogInfo2    /^\d\{2\}:\d\{2\}:\d\{2\} -
\d\{2\}:\d\{2\}:\d\{2\} INFO:.*$/
endfunction

autocmd BufWinEnter *.log call AVLogHighlight()
autocmd BufWinEnter *.log*_diflis_* call AVLogHighlight()

" ==========================================================
" Test Output
" ==========================================================
highlight TestSuccess    ctermfg=green    guifg=green
highlight TestFailed     ctermfg=darkred  guifg=darkred
highlight TestOutput     ctermfg=brown    guifg=brown
highlight TestHighlight  ctermfg=magenta  guifg=magenta

command! -nargs=0 AVTest call AVTestHighlight()
function! AVTestHighlight()
    syntax match  TestSuccess     /\.\.\.success\.$/ms=s+3
    syntax match  TestSuccess     /^done$/
    syntax match  TestFailed      /\.\.\.failed\.$/ms=s+3
    syntax match  TestFailed      /failed (line .*)$/
    syntax match  TestFailed      /Last error in line \d*/
    syntax match  TestFailed      /^Expected output: .* but was: .*$/
    syntax region TestFailed      start=/^.*FAILED: / end=/^$/
    syntax match  TestFailed      /^Interrupted; exiting\.\.\.$/
    syntax match  TestOutput      /^.*___ Last Output from .* ___.*$/
    syntax match  TestOutput      /^.*\^\^\^ Last Output from .* \^\^\^.*$/
    syntax match  TestHighlight   /^=== \d* tests failed! ===$/
    syntax match  TestHighlight   /^=== Test failed because of earlier errors! ===$/
endfunction

autocmd BufWinEnter output.txt call AVTestHighlight()
