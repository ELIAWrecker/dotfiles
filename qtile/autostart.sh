#!/bin/sh
picom --config ~/.config/picom/picom.conf &
ibus-daemon -rxRd &
roficlip.py --daemon &
clipster -d &
