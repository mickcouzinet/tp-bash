#!/bin/bash
# init-projet.sh : prépare l'arborescence d'un projet full stack

# 1. Nom du projet (1er paramètre)
nom_projet=$1

# 2. Port du front, 5173 par défaut
read -r -p "Port du front [5173] : " port_front
port_front=${port_front:-5173}

# 3. Port de l'API
port_api=$(( port_front + 1 ))

# 4. Clé d'API masquée
read -r -s -p "Clé d'API : " cle_api
echo

# 5. Dossiers
mkdir -p "$nom_projet/front" "$nom_projet/api"

# 6. README.md
echo "# $nom_projet" > "$nom_projet/README.md"
echo "Créé le : $(date +%d/%m/%Y)" >> "$nom_projet/README.md"
echo "Machine : $(hostname)" >> "$nom_projet/README.md"

# 7. api/.env
echo "PORT=$port_api" > "$nom_projet/api/.env"
echo "NODE_ENV=development" >> "$nom_projet/api/.env"
echo "FRONT_URL=http://localhost:$port_front" >> "$nom_projet/api/.env"
echo "API_KEY=$cle_api" >> "$nom_projet/api/.env"

# 8. Résumé
echo "Projet : $nom_projet"
echo "Front : http://localhost:$port_front"
echo "API : http://localhost:$port_api"
echo "Clé d'API : ${#cle_api} caractères"

