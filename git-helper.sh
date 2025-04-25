#!/bin/bash
echo "=== Git Status ==="
git status

echo ""
echo "=== Änderungen zum Commit vormerken ==="
git add .

echo ""
read -p "Commit-Nachricht eingeben: " commit_message

git commit -m "$commit_message"

echo ""
echo "=== Pushen auf das entfernte Repository ==="
git push

echo ""
echo "=== Fertig! ==="
