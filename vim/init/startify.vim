" Show modified and untracked git files
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" Create a custom header using figlet
let g:startify_custom_header =
    \ startify#pad(split(system('figlet -f script -w 150 Hello Yusril Arzaqi'), '\n'))

" List
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'dir',       'header': ['   Directory '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

" Bookmarks
let g:startify_bookmarks = [
            \ { 'i': '~/.config/i3/config' },
            \ { 'p': '~/.config/polybar/config' },
            \ { 'v': '~/.vimrc' },
            \ { 't': '~/.tmux/plugins/tmux/scripts/dracula.sh' },
            \ '~/Documents',
            \ ]

" automatically restart a sessision
let g:startify_session_autoload = 1



