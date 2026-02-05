#!/bin/bash
echo "Validation de fichier"
read -p "Entrez le chemin du fichier à valider : " file_path
if [-e "$file_path"]; then
    echo "Le fichier existe."
    if [-f "$file_path"]; then
        echo "C'est un fichier régulier." 
    elif [-d "$file_path"]; then
        echo "C'est un répertoire."
    else
        echo "Ce n'est ni un fichier , ni un repertoire."
    fi 
    if [-r "$file_path"]; then
        echo "Le fichier est lisible."
    else
        echo "Le fichier n'est pas lisible."
    fi
    if [-w "$file_path"]; then
        echo "Le fichier est modifiable."
    else
        echo "Le fichier n'est pas modifiable."
    fi
    if [-x "$file_path"]; then
        echo "Le fichier est exécutable."
    else
        echo "Le fichier n'est pas exécutable."
    fi
    echo "Taille du fichier : $(stat -c%s "$file_path") bytes"
    else
    echo "Le fichier n'existe pas."
fi
