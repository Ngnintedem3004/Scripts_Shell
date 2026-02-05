#!/bin/bash
#script to display system information
echo "System Information:"
echo "-------------------"
echo "Hostname: $(hostname)"
echo "Operating System: $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Memory Usage:$(free -h)"
echo "Disk Usage:$(df -h)"
echo "Logged in Users:$(whoami)" 
echo "Nom du script: $0"
echo "Date et heure actuelle:$(date +%Y-%m-%d\ %H:%M:%S)"
echo "Repertoire de travail actuel:$(pwd)"
echo "Nombre de processus en cours:$(ps -e | wc -l)"
echo "Os release:$(cat /etc/os-release)"
echo "-------------------"  
echo "End of System Information"
 