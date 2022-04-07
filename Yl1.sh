#!/bin/bash
#Koosta skript, mis küsib kasutaja käest täisnurkse kolmnurga küljede väärtused,
#mis võivad olla nii täis- kui ka komaga, ehk reaalarvud. Skript peab väljastama
#kasutajale arvutatud hüpotenuusi väärtus koos seletava kirjeldusega.
#Arvutamiseks võib kasutada nii expr käsu võimalused kui ka $((avaldis)) võiamlused, ka bc võimalused.
#Alguses katseta nii, et sisestad ainult täisarvulised väärtused, tulemus aga peab olema komaga.
#Täpsuseks võtame kaks kohta peale komat.


echo "Sisesta a külje vaartus: "
read a
echo "Sisesta b külje vaartus: "
read b

aruudus=$(($a**2))
bruudus=$(($b**2))
cruudus=$(($aruudus+$bruudus))
hypotenuus=`echo "scale=2;sqrt($cruudus)"|bc`
echo $hypotenuus
