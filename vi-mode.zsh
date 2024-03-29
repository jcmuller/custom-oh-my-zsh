set -o vi

bindkey -M viins '\e.' insert-last-word
bindkey "^?" backward-delete-char
bindkey "^X^E" edit-command-line
bindkey "^U" backward-kill-line

#################################
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey '^e' end-of-line
bindkey '^a' beginning-of-line
bindkey '^f' forward-char
bindkey '^b' backward-char

precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# escape key timeout
export KEYTIMEOUT=1
