#!/bin/bash
read -r -p "Durée du build en secondes : " secondes
minutes=$(( secondes / 60 ))
reste=$(( secondes % 60 ))
echo "Le build a duré ${minutes} min ${reste} s"
