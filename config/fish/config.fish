
# Commands to run in interactive sessions can go here
set STOP "\e[0m"
set orange "#fe8019"
set blue "#81A1C1"
set green "#5CB281"

function fish_greeting
    set_color $green
    echo "
          ██░ ██  ▓█████  ██▓     ██▓    ▒█████      ▓██   ██▓ █    ██   ██████  ██▀███    ██▓  ██▓        ▄▄▄      ██▀███  ▒███████▒ ▄▄▄       █████    ██▓
        ▒▓██░ ██  ▓█   ▀ ▓██▒    ▓██▒   ▒██▒  ██▒     ▒██  ██▒ ██  ▓██▒▒██    ▒ ▓██ ▒ ██▒▒▓██▒ ▓██▒       ▒████▄   ▓██ ▒ ██▒▒ ▒ ▒ ▄▀░▒████▄   ▒██▓  ██▒▒▓██▒
        ░▒██▀▀██  ▒███   ▒██░    ▒██░   ▒██░  ██▒      ▒██ ██░▓██  ▒██░░ ▓██▄   ▓██ ░▄█ ▒▒▒██▒ ▒██░       ▒██  ▀█▄ ▓██ ░▄█ ▒░ ▒ ▄▀▒░ ▒██  ▀█▄ ▒██▒  ██░▒▒██▒
         ░▓█ ░██  ▒▓█  ▄ ▒██░    ▒██░   ▒██   ██░      ░ ▐██▓░▓▓█  ░██░  ▒   ██▒▒██▀▀█▄  ░░██░ ▒██░       ░██▄▄▄▄██▒██▀▀█▄    ▄▀▒   ░░██▄▄▄▄██░██  █▀ ░░░██░
         ░▓█▒░██▓▒░▒████▒░██████▒░██████░ ████▓▒░      ░ ██▒▓░▒▒█████▓ ▒██████▒▒░██▓ ▒██▒░░██░▒░██████     ▓█   ▓██░██▓ ▒██▒▒███████▒▒▓█   ▓██░▒███▒█▄ ░░██░
          ▒ ░░▒░▒░░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░ ▒░▒░▒░        ██▒▒▒ ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░ ▒▓ ░▒▓░ ░▓  ░░ ▒░▓       ▒▒   ▓▒█░ ▒▓ ░▒▓░░▒▒ ▓░▒░▒░▒▒   ▓▒█░░ ▒▒░ ▒  ░▓
          ▒ ░▒░ ░░ ░ ░  ░░ ░ ▒  ░░ ░ ▒    ░ ▒ ▒░      ▓██ ░▒░ ░░▒░ ░ ░ ░ ░▒  ░ ░  ░▒ ░ ▒ ░ ▒ ░░░ ░ ▒        ░   ▒▒   ░▒ ░ ▒  ░▒ ▒ ░ ▒░ ░   ▒▒  ░ ▒░  ░ ░ ▒ ░
          ░  ░░ ░    ░     ░ ░     ░ ░  ░ ░ ░ ▒       ▒ ▒ ░░   ░░░ ░ ░ ░  ░  ░    ░░   ░ ░ ▒ ░   ░ ░        ░   ▒    ░░   ░ ░ ░ ░ ░ ░  ░   ▒     ░   ░ ░ ▒ ░

    ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
    "
    # figlet -f script -p "Hello Yusril Arzaqi"
end

# Alias

alias grep='grep --color=auto --exclude-dir={.bzr,.git, CVS, .hg, .svn, .idea, .tox}'
alias v='nvim'
alias l='ll'
alias ls='exa --icons'
alias lsa='ls -a'
alias graph='git log --oneline --all --graph --decorate'
alias ip='ip -c'
# alias aupd='sudo apt update'
# alias aupg='sudo apt dist-upgrade'


function fish_user_key_bindings
   fish_vi_key_bindings
   #fish_default_key_bindings
end
export TERM="xterm-256color"
export EDITOR="nvim"

# start starship 
starship init fish | source

# Add path
set -U fish_user_paths /home/yusril/.local/bin /home/yusril/bin /home/yusril/.cargo/bin/ /opt/exploitdb /opt/lampp/bin $fish_user_paths

# TokyoNight Color Palette
# set -l foreground c0caf5
# set -l cyan 7dcfff
# set -l green 9ece6a
set -l foreground ca9b1d
set -l selection 33467C
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 5CB281
set -l purple 9d7cd8
set -l cyan 4abaaf
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
