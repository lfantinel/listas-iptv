#!/bin/bash

destino=got.m3u
echo "#EXTM3U" > $destino
for t in {1..8}; do
	for e in {01..10}; do

		#echo "#EXTINF:-1 tvg-logo=\"https://image.tmdb.org/t/p/w300/3OcQhbrecf4F4pYss2gSirTGPvD.jpg\" group-title=\"TEMPORADA $t\" ,EPISÓDIO $e DUB SD" >> $destino
        #echo "http://player1.ultracinefilmes.com/gameofthrones/dub/$t/$e.mp4" >> $destino

		echo "#EXTINF:-1 tvg-logo=\"https://image.tmdb.org/t/p/w300/3OcQhbrecf4F4pYss2gSirTGPvD.jpg\" group-title=\"TEMPORADA $t\" ,EPISÓDIO $e LEG SD" >> $destino
        echo "http://player1.ultracinefilmes.com/gameofthrones/leg/$t/$e.mp4" >> $destino

	done
done