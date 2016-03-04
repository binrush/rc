#!/bin/sh

export PATH="$HOME/bin:$PATH"
export EDITOR="vim"
#setxkbmap "us,ru" -option "grp:ctrl_shift_toggle,grp_led:scroll"
/home/rush/sw/dwmstatus-1.1/dwmstatus &
wmname LG3D
exec /home/rush/sw/dwm-6.0/dwm
