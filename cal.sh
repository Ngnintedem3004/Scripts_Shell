#!/bin/bash
#mini calculatrice
echo "Entrez un opérateur (+, -, *, /) : "
read op
if [[ "$op" != "+" && "$op" != "-" && "$op" != "*" && "$op" != "/" ]]; then
    echo "Opérateur invalide. Veuillez entrer +, -, *, ou /."
    exit 1
fi
if ["$op" =="+"] then 
   echo "La somme  de $1 , $2  est : $(($1 + $2))"
elif ["$op" =="-"] then
   if [ $1 -lt $2 ]; then
     echo ": La différence de  $2 et $1  est : $(($2 - $1 ))"
   else
     echo "La différence de $1 , $2  est : $(($1 - $2 ))"
   fi
elif ["$op" =="*"] then
  echo "Le produit de $1 , $2  est : $(($1 * $2 ))"
elif ["$op" =="/"] then
   if [ $2 -eq 0 ]; then
    echo "Erreur : Division par zéro."
    exit 1
   else
    echo "Le quotient de $1 , $2  est : $(($1 / $2 ))"
   fi
fi
