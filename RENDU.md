# Rendu du TP Scripting Bash

## Identité

Nom :COUZINET

Prénom :Michael

Lien du dépôt GitHub :https://github.com/mickcouzinet/tp-bash

---

## Partie 1 – Mise en route

Résultat de la commande `docker compose ps`, lancée sur le poste :

```text

```

Résultat de la commande `id`, lancée dans la machine :

```text

```

Résultat de la commande `git remote -v`, lancée sur le poste :

```text

```

---

## Partie 2 – Premier script

Résultat de `./init-projet.sh boutique` avec la saisie `5173` :

```text

```

Contenu du fichier `boutique/README.md` créé par le script :

```text

```

Question 1 : pourquoi faut-il écrire `./bonjour.sh` et pas simplement `bonjour.sh` pour lancer le script ?

Réponse :

Question 2 : quelle différence observe-t-on entre `echo "$nom_projet"` et `echo '$nom_projet'` ? Pourquoi ?

Réponse :

Question 3 : expliquer avec ses propres mots ce que fait la ligne `port_api=$(( port_front + 1 ))`.

Réponse :

---

## Partie 3 – Décider et répéter

### Exercice de prédiction (section 3.1)

| Test | Prédiction | Résultat obtenu |
|---|---|---|
| 1. `[[ 8 > 10 ]]` | | |
| 2. `[[ 8 -gt 10 ]]` | | |
| 3. `[[ $branche == "main" \|\| $branche == release/* ]]` | | |
| 4. `[[ $branche == "release/*" ]]` | | |
| 5. `[[ $port -ge 1024 && $port -le 65535 ]]` | | |
| 6. `[[ -f ../partie2/boutique/front ]]` | | |
| 7. `[[ -s ../partie2/boutique/README.md ]]` | | |
| 8. `[[ ! -e ../partie2/boutique/api/.env ]]` | | |
| 9. `[[ -n $variable_inexistante ]]` | | |
| 10. `[[ $branche != "main" ]]` | | |

Explication des écarts entre prédiction et résultat :

### Exercice check-env.sh

Résultat de `./check-env.sh --detail` puis de `echo $?`, lancés dans la machine :

```text

```

Résultat de `./scripts/partie3/check-env.sh --detail` puis de `echo $?`, lancés sur le poste depuis le dossier `tp-bash` :

```text

```

Question : pourquoi le bilan de `check-env.sh` n'est-il pas le même dans la machine et sur le poste ? Pourquoi peut-on exceptionnellement lancer ce script sur son poste ?

Réponse :

---

## Partie 4 – Fiabiliser ses scripts

### Mini-exercice (section 4.5)

Les deux lignes de la trace `bash -x` qui révèlent les erreurs de `services-bug.sh` :

```text

```

### Exercice check-env.sh

Résultat de `./check-env.sh -v` puis de `echo $?`, lancés dans la machine :

```text

```

Question : pourquoi le script de la partie 3 ne fonctionne-t-il plus quand on ajoute la ligne `set -euo pipefail` ?

Réponse :

---

## Partie 5 – Combiner les outils du terminal

### Exercice analyse-logs.sh

Contenu du fichier `rapport.txt` produit par `./analyse-logs.sh api.log > rapport.txt` :

```text

```

Question : dans le tube `cut -d ' ' -f 3 api.log | sort | uniq -c | sort -rn | head -n 3`, pourquoi faut-il trier les routes avant `uniq -c` ?

Réponse :

---

## Partie 6 – Projet final

Résultat de `./maintenance.sh rapport` puis de `echo $?`, lancés dans la machine après `./reinitialiser.sh` :

```text

```

Résultat de `./maintenance.sh nettoyage --simulation`, lancé dans la machine :

```text

```

Question : pourquoi est-il prudent de prévoir un mode simulation dans un script qui supprime des fichiers ?

Réponse :

---

## Partie 7 – Pour aller plus loin
