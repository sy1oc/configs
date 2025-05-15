# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sy1oc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


bindkey -M vicmd 'n' vi-backward-char
bindkey -M vicmd 'e' down-line-or-history
bindkey -M vicmd 'i' up-line-or-history
bindkey -M vicmd 'o' vi-forward-char
bindkey -s -M vicmd 'N' '10n'
bindkey -s -M vicmd 'E' '10e'
bindkey -s -M vicmd 'I' '10i'
bindkey -s -M vicmd 'O' '10o'
bindkey -M vicmd 'j' vi-repeat-search
bindkey -M vicmd 'h' vi-insert
bindkey -M viins 'h' vi-insert
bindkey -M vicmd 'k' vi-forward-word-end
bindkey -M vicmd 'l' vi-open-line-below
bindkey -M vicmd 'J' vi-rev-repeat-search
bindkey -M vicmd 'H' vi-insert-bol
bindkey -M vicmd 'K' vi-forward-blank-word-end
bindkey -M vicmd 'L' vi-open-line-above


alias l='ls --color=auto '
alias ll='l -al '
alias grep='grep --color=auto '
alias pm='pacman'
alias v='nvim'
alias shut='shutdown now'
alias s='sudo '
alias nf='neofetch'

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

export PATH="/home/sy1oc/.cargo/bin:$PATH"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST
prompt='%B%F{cyan}%n%f @ %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f 
[%F{cyan}%m%f] <<%b '
