#!/bin/bash
set -e

REPO_URL="https://github.com/squach90/steam2depot.git"
URL_RAW="https://raw.githubusercontent.com/squach90/steam2depot/main/steam2depot.sh"
CLONE_DIR="$HOME/.steam2depot"
INSTALL_PATH="/usr/local/bin/steam2depot"

echo "📥 Installing steam2depot..."

# Créer ou mettre à jour le dossier local
mkdir -p "$CLONE_DIR"

# Télécharger le script
curl -fsSL "$URL_RAW" -o "$CLONE_DIR/steam2depot.sh"

# Rendre exécutable et copier dans /usr/local/bin
chmod +x "$CLONE_DIR/steam2depot.sh"
sudo cp "$CLONE_DIR/steam2depot.sh" "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH"

echo "✅ Installation complete!"
echo "👉 You can now run: steam2depot"
