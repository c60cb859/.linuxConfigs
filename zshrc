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

alias -s py=$EDITOR
alias -s {c,cc,cpp,h,hpp}=$EDITOR

#
# Misc
#

setopt vi # sets vi-mode


#
# fzf configs
#

FZF_DEFAULT_COMMAND='rg --no-messages --files --follow'
FZF_DEFAULT_OPTS='--inline-info --preview-window=hidden --preview="bat --color always {}" --bind "ctrl-v:toggle-preview"'

FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
