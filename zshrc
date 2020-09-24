#
# Enviroment variables
#
path+=($HOME/bin)
export path
export BROWSER=firefox
export EDITOR=nvim
export VISUAL=nvim

#
# alieases
#

alias vi="nvim"
alias vim="nvim"
alias wiki="nvim -c VimwikiIndex"

alias cat="bat"
#
# Misc
#

setopt vi # sets vi-mode

#
# fzf configs
#

FZF_DEFAULT_COMMAND='fd --type file --color=always --follow --hidden --exclude .git --exclude .cache'
FZF_DEFAULT_OPTS='--ansi '
FZF_DEFAULT_OPTS+='--inline-info '
FZF_DEFAULT_OPTS+='--cycle '
FZF_DEFAULT_OPTS+='--reverse '
FZF_DEFAULT_OPTS+='--preview-window=hidden --preview="bat --color always {}" --bind "ctrl-v:toggle-preview" '

export FZF_DEFAULT_OPTS

FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
