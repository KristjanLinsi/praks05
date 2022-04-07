#!/bin/bash
#Koosta script, küsib kasutaja käest kõik kolmnurga küljede väärtused,
#mis võivad olla nii täis- kui ka komaga, ehk reaalarvud.
#Skript peab väljastama kasutajale arvutatud kolmnurga pindala
#väärtus koos seletava kirjeldusega. Arvutamiseks kasutada Heroni valemit.

read -p "Sisesta a külje väärtus: " a
read -p "Sisesta b külje väärtud: " b
read -p "Sisesta c külje väärtus: " c
s=`echo "scale=4; ($a+$b+$c)/2" | bc`
area=`echo "scale=4; sqrt($s*($s-$a)*($s-$b)*($s-$c))" | bc`
echo "Kolmnurga pindala on $area"
