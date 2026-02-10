#!/bin/bash
#Script de sauvegarde d'un repertoitre et de création d'un repertoire 

DATE=$(date +%Y-%m-%d)

    if [$# -ne 3]; then 
          echo "il faut fournir 3 repertoires"
          exit 1
    fi

    for dir in "$@"; do
    if [ ! -d "$dir" ]; then
        echo "Le repertoire $dir n'existe pas."
        mkdir -p "$dir"
        echo "Le repertoire $dir a été créé."
    else
        echo "Le repertoire $dir existe déjà."
        echo "Sauvegarde du repertoire ..... $dir"

        mv "$dir" "${dir}_$DATE"

        mkdir -p "$dir"
    fi
done