#!/bin/bash
# repertoire parent
PROJECT_HOME=/opt/leroy/
#recupération des paramètres
folder1="$1"
folder2="$2"
folder3="$3"
# création des dossiers
mkdir -p $PROJECT_HOME$folder1/$folder2/$folder3
#verification des répertoires
ls -lad "$PROJECT_HOME/$folder1" "$HOME/$folder2" "$HOME/$folder3"