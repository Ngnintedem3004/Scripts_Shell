#!/bin/bash
# Script de sauvegarde
HOME_DIR="$HOME"

if [ -e "$HOME_DIR/$1" ]; then
  for file in "$HOME_DIR/$1/*txt"; do
    if [-s "$file"]; then
      if [ ! -d "$HOME_DIR/backup" ]; then
        echo "Le répertoire de sauvegarde n'existe pas. Création du répertoire backup."
        read -p "Voulez-vous créer le répertoire de sauvegarde ? (y/n) : " answer
        if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
          mkdir -p "$HOME_DIR/backup"
          echo "Répertoire de sauvegarde créé avec succès."
        else
          echo "Le répertoire de sauvegarde n'a pas été créé. Le script va s'arrêter."
          exit 1
      fi
     cp "$file" "$HOME_DIR/backup/$(basename "$file").bak" 1>>/var/log/backup.log 2>> /var/log/backup_error.log
    else
     echo "Le fichier $file est vide et n'a pas été sauvegardé."
    fi
  done
        
else
    echo "Le chemin "$HOME_DIR/$file" n'existe pas."
fi
 