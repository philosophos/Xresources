#!/bin/bash
# test urxvt font & screenshot for you choice
# GitHub : philosophos<philosoph@yeah.net>

A=$(fc-list :lang=zh |cut -d '.' -f1 |cut -d '/' -f6 |cut -d '-' -f1 )
B=$(fc-list :lang=zh family |cut -d ',' -f1|sed 's/\s//g')
C=$(echo $A$B |sed 's/\s/\n/g' |sort -u)
j=1
FC_DIR=~/pictures/shots/font-test-urxvt
[[ -d $FC_DIR ]]||mkdir -p $FC_DIR
for i in $C
do
    printf '\e]710;%s\007' "xft:$i:pixelsize=18"
    k=$(echo $j|awk '{printf("%02d\n",$0)}')
    echo "$k 这个urxvt的字体设置实在。。。這個urxvt的字體設置實在。。。$i"
    sleep 1
    scrot $FC_DIR/$k-$i.png
    ((j++))
done
