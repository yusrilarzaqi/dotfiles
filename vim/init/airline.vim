" ============================================================================
" AIRLINE CONFIGURATION
" " ============================================================================
" set airline theme
let g:airline_theme = 'onedark'
" displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#gen_tags#enabled = 1
" separators can be configured independently for the tablne
" let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
" populate the g:airline_symbols dictionary with the powerline symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline_left_sep = ''
" let g:airline_left_sep = '░'
" let g:airline_left_sep = '▀'
let g:airline_left_sep = '█'
" ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
let g:airline_right_sep = '█'
" let g:airline_right_sep = '\uE0BE'
" let g:airline_right_sep = '░'
" let g:airline_right_sep = '▀'
" let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tabline#buffer_nr_show = 0

" enable modified detection >
let g:airline_detect_modified=1

" enable paste detection >
let g:airline_detect_paste=1


" or copy paste the following into your vimrc for shortform text
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ ''     : 'V',
    \ }

" enable/disable coc integration >
let g:airline#extensions#coc#enabled = 1

" change error symbol: >
let airline#extensions#coc#error_symbol = 'Error:'

" change warning symbol: >
let airline#extensions#coc#warning_symbol = 'W:'

