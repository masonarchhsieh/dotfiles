#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
#[[ -f ~/.Xdefaults ]] && xrdb -merge -I$HOME ~/.Xdefaults
#xset r rate 200 50

#exec i3
