" ============================================================================
" AIRLINE CONFIGURATION
" " ============================================================================
" set airline theme
"let g:airline_theme = 'base16_aquarium_dark'
" let g:airline_theme = 'base16_atelier_cave'
" let g:airline_theme = 'tokyonight'
" let g:airline_theme = 'apprentice'
let g:airline_theme = 'nord'
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
let g:airline_left_sep = '▀'
" ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
" let g:airline_right_sep = "\uE0BE"
" let g:airline_right_sep = "░"
let g:airline_right_sep = "▀"
" let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
