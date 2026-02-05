#!/bin/bash

# Déclaration d'un tableau
fruits=("pomme" "orange" "banane" "kiwi")

# Accès aux éléments (index commence à 0)
echo "Premier fruit : ${fruits[0]}"
echo "Deuxième fruit : ${fruits[1]}"

# Tous les éléments
echo "Tous les fruits : ${fruits[@]}"

# Nombre d'éléments
echo "Nombre de fruits : ${#fruits[@]}"

# Ajout d'un élément
fruits+=("mangue")

# Modification d'un élément
fruits[2]="fraise"

# Parcourir un tableau
for fruit in "${fruits[@]}"; do
    echo "- $fruit"
done