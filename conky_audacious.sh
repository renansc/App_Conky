#!/bin/bash
info=`audtool --current-song`;
t_total=${#info};
album=${info% - *};
t_album=${#album};
artista=${album% - *};
t_artista=${#artista};
artista=${artista:0:t_artista};
album=${album:$t_artista:$t_album};
album=${album:2:t_album};
musica=${info:$t_album:$t_total};
t_musica=${#musica};
musica=${musica:2:t_musica};
echo ALBUM: $album  > ~/github/App_Conky/info_audacious.txt;
echo ARTISTA: $artista >> ~/github/App_Conky/info_audacious.txt;
echo MUSICA: $musica >> ~/github/App_Conky/info_audacious.txt;
