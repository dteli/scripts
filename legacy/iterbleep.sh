#!/usr/bin/zsh

zmodload -i zsh/mathfunc
#rand48()

#set i = 0
#while (($i < 100)); do

for ((i=0;i<100;i++)); do sox -n "$i.mp3" synth $[rand48()] sine %$[(rand48() - 0.5) * 24] triangle %$[RANDOM % 24 - 12] gain -14; done;
