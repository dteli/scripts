#!/usr/bin/sh

# cropdblgrnd input.jpg topleftX topleftY

S0_XRES=1650
S0_YRES=1080
S0_X=0
S0_Y=720
S1_XRES=1080
S1_YRES=1920
S1_X=1680
S1_Y=0
X_BORDER=180

fname=$(basename "$1")
fext="${fname##*.}"
fname="${fname%.*}"

convert $1 -crop ${S0_XRES}x${S0_YRES}+$(($2 + $S0_X))+$(($3 + $S0_Y)) "${fname}_s0.$fext"

convert $1 -crop ${S1_XRES}x${S1_YRES}+$(($2 + $S1_X + $X_BORDER))+$(($3 + $S1_Y)) "${fname}_s1.$fext"