#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#ff00ffcc'
TEXT='#ee00eeee'
WRONG='#880000bb'
VERIFYING='#bb00bbbb'
BACKGROUND=/home/ash1vt/.wallpapers/ign_astronaut.png
PICTURE=/tmp/i3lock.png
convert $BACKGROUND -resize 1920x1080 $PICTURE

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 5                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %Y-%m-%d"       \
--keylayout 1                \
--image=$PICTURE \
--time-font="JetBrains Mono" \
--date-font="JetBrains Mono" \
--layout-font="JetBrains Mono" \
--verif-font="JetBrains Mono" \
--wrong-font="JetBrains Mono" \
--greeter-font="JetBrains Mono" \
--date-size=12 \
--verif-size=22 \
--verif-text="Verifying..." \
--wrong-text="Wrong!" \
-n \

rm $PICTURE
