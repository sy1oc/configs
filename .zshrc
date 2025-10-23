HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/sy1oc/.zshrc'
autoload -Uz compinit
compinit
autoload edit-command-line

#export PATH="/home/sy1oc/.cargo/bin:$PATH"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export EDITOR=nvim
export KEYTIMEOUT=1
export RANGER_LOAD_DEFAULT_RC=FALSE

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST
prompt='
%B%F{cyan}%n%f @ %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f 
[%F{cyan}%m%f] <<%b '

source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

function 10n() { local count=10; while (( count-- > 0 )); do zle vi-backward-char       ;done }
function 10e() { local count=10; while (( count-- > 0 )); do zle down-line-or-history   ;done }
function 10i() { local count=10; while (( count-- > 0 )); do zle up-line-or-history     ;done }
function 10o() { local count=10; while (( count-- > 0 )); do zle vi-forward-char        ;done }
function bonsai() {
    while true ; do cbonsai -l -t 1; done
}
function push_system() {
    (cd && git switch sol && git pull && git merge mut@configs && git push -u gitee sol && git push -u github sol && git switch mut@configs)
}
# gl: git log
function gl() {
    git log --graph --oneline --decorate --color > ~/.log
    echo ""
    cat ~/.log
}
# px: proxy
function px() {
    sudo systemctl start clash
    export http_proxy=http://127.0.0.1:7890
    export https_proxy=https://127.0.0.1:7890
    echo -e "http_proxy\t:= \t"$http_proxy
    echo -e "https_proxy\t:= \t"$https_proxy
}
# dpx: de-proxy
function dpx() {
    sudo systemctl stop clash
    unset http_proxy https_proxy
    echo -e "http_proxy\t:= \t"$http_proxy
    echo -e "https_proxy\t:= \t"$https_proxy
}
# asd: the left most 3 key in the mid keyboard row under qwerty layout
function asd() {
    setxkbmap us -v colemak && xset r 66
    #xinput --set-prop 11 327 0
    #xinput --set-prop 16 328 0 1 0
    xinput --set-prop 11 330 0 1 0
    xinput --set-prop 11 352 0 1 0
    xinput --set-prop 13 330 0 1 0
    xinput --set-prop 11 350 0 1 0
}
# wp: wallpaper
function wp() {
    feh --bg-max --randomize ~/.wallpapers/* &
}
function zle-line-init {
    zle -K viins
    echo -ne "\033[6 q"   
    echo -ne "\033]12;Gray\007" 
}
function zle-keymap-select {
    if [[ $KEYMAP == vicmd ]]; then
        echo -ne "\033[2 q"    
        echo -ne "\033]12;White\007"
    else
        echo -ne "\033[6 q"     
        echo -ne "\033]12;White\007"
    fi
}
function vi-operator-swapped {
    local key
    read -k key
    case $key in
        h) key="i" ;;
        i) key="h" ;;
    esac
    zle -U "$key"
    zle ".$WIDGET"
}

zle -N 10n
zle -N 10e
zle -N 10i
zle -N 10o
zle -N vi-change vi-operator-swapped
zle -N vi-delete vi-operator-swapped
zle -N vi-yank vi-operator-swapped
zle -N zle-line-init
zle -N zle-keymap-select
zle -N edit-command-line

bindkey -M vicmd 'n' vi-backward-char
bindkey -M vicmd 'e' down-line-or-history
bindkey -M vicmd 'i' up-line-or-history
bindkey -M vicmd 'o' vi-forward-char
bindkey -M vicmd 'N' 10n
bindkey -M vicmd 'E' 10e
bindkey -M vicmd 'I' 10i
bindkey -M vicmd 'O' 10o
bindkey -M vicmd 'j' vi-repeat-search
bindkey -M vicmd 'h' vi-insert
bindkey -M vicmd 'k' vi-forward-word-end
bindkey -M vicmd 'l' vi-open-line-below
bindkey -M vicmd 'J' vi-rev-repeat-search
bindkey -M vicmd 'H' vi-insert-bol
bindkey -M vicmd 'K' vi-forward-blank-word-end
bindkey -M vicmd 'L' vi-open-line-above
bindkey -M vicmd 'c' vi-change
bindkey -M vicmd 'q' edit-command-line

alias l='ls --color=auto '
alias ll='l -al '
alias grep='grep --color=auto '
alias pm='pacman'
alias v='nvim'
alias shut='shutdown now'
alias s='sudo '
alias ff='fastfetch'

dprint "Welcome, sy1oc @ Sol" .25
