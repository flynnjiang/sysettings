"========================================================
" Highlight All Function
"========================================================
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunction gui=NONE guifg=#FFA500 guibg=black cterm=none ctermfg=yellow ctermbg=black
