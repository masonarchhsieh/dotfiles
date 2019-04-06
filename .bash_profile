#!/bin/bash
# Profile file

export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"

export EDITOR="vim"
export BROWSER="firefox"
[ -f ~/.bashrc ] && source ~/.bashrc

# Start graphical server if i3 not already running
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

# Switch escape and caps and use wal colors if tty:
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

export PYTHONPATH=/usr/lib/python3.7/site-packages                 
export TERM="screen-256color"                                      
export TERMINAL="urxvt" i
#alias urxvt="urxvt -fn 'xft:DejaVu Sans Mono for Powerline-12'" 
export PYTHONPATH=/usr/lib/python3.7/site-packages
export TERM="screen-256color"
export TERMINAL="urxvt"
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
