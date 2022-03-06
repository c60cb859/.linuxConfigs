#!/bin/sh
if [[ "$TERM" = "tmux"* ]] && [[ -n "$TMUX" ]]; then
  if [ "$1" == "prod" ]; then
    tmux select-pane -P 'bg=#342828'
  elif [ "$1" == "dev" ]; then
    tmux select-pane -P 'bg=#162034'
  elif [ "$1" == "other" ]; then
    tmux select-pane -P 'bg=#28342b'
  else
    tmux select-pane -P 'bg=#282c34'
  fi;
else
  if [ "$1" == "prod" ]; then
    printf '\033]11;#342828\007'
  elif [ "$1" == "dev" ]; then
    printf '\033]11;#162034\007'
  elif [ "$1" == "other" ]; then
    printf '\033]11;#28342b\007'
  else
    printf '\033]11;#282c34\007'
  fi
fi
