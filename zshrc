#
# Enviroment variables
#
path+=($HOME/.local/bin)
path+=($HOME/.cargo/env)
path+=($HOME/.cargo/bin)
path+=($HOME/.local/share/gem/ruby/3.0.0/bin)
path+=($HOME/.cargo/env)
export path

export BROWSER=firefox
export TERMINAL=alacritty
export EDITOR=nvim
export VISUAL=nvim
export COLORTERM=truecolor

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export HISTFILE=$XDG_CACHE_HOME/zsh/history
export HISTSIZE=5000
export SAVEHIST=1000

export BAT_CONFIG_PATH="$XDG_CONFIG_HOME/.linuxConfigs/bat/bat.conf"
export ESPIDF=/opt/esp-idf

autoload -U compinit; compinit

#
# alieases
alias vi="command nvim ${nvim_options:+${nvim_options[*]}}"
alias vim="command nvim ${nvim_options:+${nvim_options[*]}}"
alias wiki="nvim -c VimwikiIndex"

alias cat="command bat ${bat_options:+${bat_options[*]}}"
alias cal="command task calendar ${cal_options:+${cal_options[*]}}"

alias glow="command glow -l ${glow_options:+${glow_options[*]}}"

# Pacman candy
alias pac-install="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias pac-remove="pacman -Qqe | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias pac-info="pacman -Qq | fzf --multi --preview 'bat <(pacman -Qi {1}) <(pacman -Fl {1} | awk \"{print \$2}\")'"

alias aur-install="yay -Slq --aur | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"

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

stty -ixon

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
