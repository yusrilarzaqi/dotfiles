if status is-interactive
    # Commands to run in interactive sessions can go here
    #set BLUE "\e[94m"
    #set BLUE "\e[97m"
    #set STOP "\e[0m"
    set time (date +"%A, %d %m %y %H : %M%p : %S")
    
    function fish_greeting
        #printf "$BLUE"
        set_color brblue
        figlet -f slant "$time"
        # fish_logo brblue brmagenta brgreen
        #printf "$STOP"
    end
end

# Alias

alias grep='grep --color=auto --exclude-dir={.bzr,.git, CVS, .hg, .svn, .idea, .tox}'
alias v='vim'
alias ls='exa --icons'
alias lsa='ls -a'


function fish_user_key_bindings
    fish_vi_key_bindings
    #fish_default_key_bindings
end
export TERM="xterm-256color"


## Configure Agnoster
# set -g color_dir_bg green
# set -g color_vi_mode_insert green
# set -g color_vi_mode_normal blue
# set -g color_git_dirty_bg red
# set -g color_git_bg blue
# set -g color_vi_mode_visual purple

# Add path
set -U fish_user_paths /home/yusril/.local/bin $fish_user_paths
set -U fish_user_paths /home/yusril/bin $fish_user_paths



