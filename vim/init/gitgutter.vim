highlight GitGutterAdd guifg=#a3be8c ctermfg=1
highlight GitGutterChange guifg=#d08770 ctermfg=2
highlight GitGutterDelete guifg=#bf616a ctermfg=3

let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_highlight_linenrs = 1

highlight! link SignColumn LineNr

nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)
