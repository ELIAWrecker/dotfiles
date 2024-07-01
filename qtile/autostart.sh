#!/bin/sh
picom --config ~/.config/picom/picom.conf &
volctl &
ibus-daemon -rxRd &
roficlip.py --daemon &
clipster -d & 

