#!/bin/sh
kitty  --title=kittyterm /home/ska/.local/share/scripts/tmux_new_or_attach.sh
#define the height in px of the top system-bar:
TOPMARGIN=0

#sum in px of all horizontal borders:
RIGHTMARGIN=0

# get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')

# new width and height
W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN ))
H=$(( $SCREEN_HEIGHT/2 - 2 * $TOPMARGIN ))

# X, change to move left or right:

# moving to the right half of the screen:
#X=$(( $SCREEN_WIDTH / 1 ))
# moving to the left:
X=0; 

#Y=$TOPMARGIN
Y=$H
sleep 2
wmctrl -r kittyterm -b remove,maximized_vert,maximized_horz && wmctrl -r kittyterm -e 0,$X,$Y,$W,$H && wmctrl -R kittyterm
#wmctrl -r kittyterm -b remove,maximized_vert,maximized_horz && wmctrl -r kittyterm -e 0,10,20,1000,500 && wmctrl -R kittyterm

