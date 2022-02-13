if status is-interactive
    # Commands to run in interactive sessions can go here
    set STOP "\e[0m"
    set orange "#fe8019"
    set blue "#81A1C1"
    
    function fish_greeting
        set_color $blue
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
end

# Alias

alias grep='grep --color=auto --exclude-dir={.bzr,.git, CVS, .hg, .svn, .idea, .tox}'
alias v='vim'
alias l='ll'
alias ls='exa --icons'
alias lsa='ls -a'
alias graph='git log --oneline --all --graph --decorate'
alias ip='ip -c'
alias aupd='sudo apt update'
alias aupg='sudo apt dist-upgrade'


#function fish_user_key_bindings
#    fish_vi_key_bindings
#    #fish_default_key_bindings
#end
export TERM="xterm-256color"

starship init fish | source
# Add path
# set -U fish_user_paths /home/yusril/.local/bin $fish_user_paths
# set -U fish_user_paths /home/yusril/bin $fish_user_paths

