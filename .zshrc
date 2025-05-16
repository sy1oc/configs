HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
export KEYTIMEOUT=.1
export ZVM=KEYTIMEOUT=1
zstyle :compinstall filename '/home/sy1oc/.zshrc'
autoload -Uz compinit
compinit

export PATH="/home/sy1oc/.cargo/bin:$PATH"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export EDITOR=nvim
export ZVM_VI_EDITOR=nvim

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
function px() {
    s systemctl start clash
    export http_proxy=http://127.0.0.1:7890
    export https_proxy=https://127.0.0.1:7890
    echo -e "proxy on"
}
function dpx() {
    s systemctl stop clash
    unset http_proxy https_proxy
    echo -e "proxy off"
}
function asd() {
    setxkbmap us -v colemak && xset r 66
    xinput --set-prop 11 327 0
    xinput --set-prop 11 330 0 1 0
}
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

alias l='ls --color=auto '
alias ll='l -al '
alias grep='grep --color=auto '
alias pm='pacman'
alias v='nvim'
alias shut='shutdown now'
alias s='sudo '
alias nf='neofetch'

