# Commands to run in interactive sessions can go here
# set STOP "\e[0m"
# set orange "#fe8019"
# set blue "#81A1C1"
# set green "#a7c080"
# set esc ""

function fish_greeting
  # $HOME/Downloads/dev/shell-color-scripts/colorscripts/yusril
end

# Alias
alias grep='grep --color=auto --exclude-dir={.bzr,.git, CVS, .hg, .svn, .idea, .tox}'
alias v='nvim'
alias l='ll -G'
alias ls='exa --icons'
alias la='ls -laG'
alias lsa='ls -a'
alias graph='git log --oneline --all --graph --decorate'
alias ip='ip -c'
alias v.='nvim .'
alias update='sudo pamac update'
alias lg="lazygit"
alias ipa="ip a"
alias pingg="ping google.com"
alias em="emacsclient -c -a 'emacs'"



function fish_user_key_bindings
   fish_vi_key_bindings
   #fish_default_key_bindings
end
export TERM="xterm-256color"
# export TERM="xterm-kitty"
export EDITOR="nvim"

# start starship 
starship init fish | source

# Add path
set -U fish_user_paths /home/yusril/.local/bin /home/yusril/bin /home/yusril/.cargo/bin/ /opt/lampp/bin /home/yusril/.emacs.d/bin

source ~/.config/fish/conf.d/mocha.fish

# bun
set -Ux BUN_INSTALL "/home/yusril/.bun"
fish_add_path "/home/yusril/.bun/bin"

