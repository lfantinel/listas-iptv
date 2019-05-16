#!/bin/sh

origem=edson-flix.m3u

wget --remote-encoding=UTF-8 -O $origem http://bit.ly/EDSON-FLIX

destino=esportes.m3u
echo "#EXTM3U" > $destino
grep -Pzo ".*group-title=\"ESPORTES.*\".*\nhttp.*\n" $origem >> $destino
grep -Pzo ".*group-title=\"PREMIERE FUTEBOL\".*\nhttp.*\n" $origem >> $destino
grep -Pzo ".*group-title=\"FUTEBOL AO VIVO\".*\nhttp.*\n" $origem >> $destino

destino=filmes.m3u
echo "#EXTM3U" > $destino
grep -Pzo ".*group-title=\"FILMES/SERIES\".*\nhttp.*\n" $origem >> $destino
grep -Pzo ".*group-title=\"REDE HBO\".*\nhttp.*\n" $origem >> $destino
grep -Pzo ".*group-title=\"GLOBOSAT FILMES\".*\nhttp.*\n" $origem >> $destino

destino=variedades.m3u
echo "#EXTM3U" > $destino
grep -Pzo ".*group-title=\"VARIEDADES\".*\nhttp.*\n" $origem >> $destino
grep -Pzo ".*group-title=\"MUSICAS\".*\nhttp.*\n" $origem >> $destino

destino=infantil.m3u
echo "#EXTM3U" > $destino
grep -Pzo ".*group-title=\"INFANTIL\".*\nhttp.*\n" $origem >> $destino

destino=lancamentos.m3u
echo "#EXTM3U" > $destinodestino=lancamentos.m3u
echo "#EXTM3U" > $destino
grep -Pzo ".*group-title=\"LANÇAMENTOS\".*\nhttp.*\n" $origem >> $destino
grep -Pzo ".*group-title=\"LANÇAMENTOS\".*\nhttp.*\n" $origem >> $destino

rm $origem
git add .
git commit -am "update"
git push