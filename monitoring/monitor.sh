#!/bin/sh
# Script de surveillance de l'utilisation du CPU et de la mémoire
# Variables globales
REPORT_FILE="monitor_$(date +%Y%m%d_%H%M%S).txt"

# Fonctions
header() {
    echo "Rapport de surveillance du système du script $0- $(date + %Y-%m-%d %H:%M:%S)" > "$REPORT_FILE"
    echo "=========================================="
}
info_systeme() {
    echo "Informations sur le système :" 
    echo "=========================================="
    echo "Nom de l'hôte : $(hostname)"
    echo "Système d'exploitation : $(uname -o)"
    echo "Version du noyau : $(uname -r)"
    echo "Architecture : $(uname -m)"
    echo "nom de l'utilisateur : $(uname -n)"
    echo "Adresse IP : $(hostname -I)"
    echo "Uptime : $(uptime -p)"
}
 
info_disque() {
    echo "Informations sur l'utilisation du disque :"
    echo "=========================================="
    df -h
}
info_memoire() { 
    echo "Informations sur l'utilisation de la mémoire :"
    echo "=========================================="
    free -h
}
top_processus() { 
    echo "Top 5 des processus les plus gourmands en CPU :"
    echo "=========================================="
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

    echo "Top 5 des processus les plus gourmands en mémoire :"
    echo "=========================================="
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6


}
info_reseau() {
    echo "Informations sur les connexions actives "
    echo "=========================================="
    netstat -tuln
}
 
menu() { 
  echo "Menu de surveillance du système :"
  echo "=========================================="
  read -p "choisissez une option :
  1. Afficher les informations sur le système
  2. Afficher les informations sur l'utilisation du disque
  3. Afficher les informations sur l'utilisation de la mémoire
  4. Afficher les processus les plus gourmands en CPU et en mémoire
  5. Afficher les connexions réseau actives
  6. Générer un rapport complet
  7. Quitter
  " choice
 echo "=========================================="
    case $choice in
        1) info_systeme >> "$REPORT_FILE" ;;
        2) info_disque >> "$REPORT_FILE" ;;
        3) info_memoire >> "$REPORT_FILE" ;;
        4) top_processus >> "$REPORT_FILE" ;;
        5) info_reseau >> "$REPORT_FILE" ;;
        6) generer_rapport >> "$REPORT_FILE" ;;
        7) echo "Au revoir!" ; exit 0 ;;
        *) echo "Option invalide, veuillez réessayer." ;;
    esac            

 }

# Programme principal
menu