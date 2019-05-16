#!/bin/sh

origem=edson-flix.m3u
destino=lista.m3u

wget -O $origem http://bit.ly/EDSON-FLIX
echo "#EXTM3U" > $destino
grep -Pzo ".*group-title=\"(ESPORTES GLOBOSAT)\".*\nhttp.*\n" $origem >> $destino
grep -Pzo ".*group-title=\"(PREMIERE FUTEBOL)\".*\nhttp.*\n" $origem >> $destino
rm $origem
