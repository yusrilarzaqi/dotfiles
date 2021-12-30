if status is-interactive
    # Commands to run in interactive sessions can go here
    #set BLUE "\e[94m"
    #set BLUE "\e[97m"
    #set STOP "\e[0m"
    
    function fish_greeting
        set_color brblue
        figlet -f slant "Yusril Arzaqi"
        #printf "$STOP"
    end
end

# Alias

alias grep='grep --color=auto --exclude-dir={.bzr,.git, CVS, .hg, .svn, .idea, .tox}'
alias v='vim'
alias ls='exa --icons'
alias lsa='ls -a'
alias graph='git log --oneline --all --graph --decorate'


#function fish_user_key_bindings
#    fish_vi_key_bindings
#    #fish_default_key_bindings
#end
export TERM="xterm-256color"

starship init fish | source
# Add path
# set -U fish_user_paths /home/yusril/.local/bin $fish_user_paths
# set -U fish_user_paths /home/yusril/bin $fish_user_paths


starship init fish | source
