#!/bin/bash
#Koosta skript, mis küsib kasutaja käest täisnurkse kolmnurga küljede väärtused,
#mis võivad olla nii täis- kui ka komaga, ehk reaalarvud. Skript peab väljastama
#kasutajale arvutatud hüpotenuusi väärtus koos seletava kirjeldusega.
#Arvutamiseks võib kasutada nii expr käsu võimalused kui ka $((avaldis)) võiamlused, ka bc võimalused.
#Alguses katseta nii, et sisestad ainult täisarvulised väärtused, tulemus aga peab olema komaga.
#Täpsuseks võtame kaks kohta peale komat.


echo "Sisesta a külje väärtus: "
read a
echo "Sisesta b külje väärtus: "
read b

#aruudus=$(($a**2))
#bruudus=$(($b**2))
#cruudus=$(($aruudus+$bruudus))

aruudus=`echo "$a^2" | bc`
bruudus=`echo "$b^2" | bc`
cruudus=`echo "scale=10;$aruudus+$bruudus" | bc`
hypotenuus=`echo "scale=10;sqrt($cruudus)" | bc`
echo $hypotenuus
