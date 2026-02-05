#!/bin/bash
echo "Gestion de carnet d'adresses"
noms=("Alice" "Bob" "Charlie")
emails=("alice@gmail.com" "bob@gmail.com" "charlie@gmail.com")
i=0
echo "Noms et emails :"
for name in "${noms[@]}"; do
    echo "nom: $name - email:${emails[$i]}"
    ((i++))
done
#Ajout d'un nouveau contact
noms+=("David")
emails+=("david@gmail.com")