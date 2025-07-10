#!/bin/bash
set -e

RAW_SCRIPT_URL="https://raw.githubusercontent.com/squach90/steam2depot/main/steam2depot.sh"
CLONE_DIR="$HOME/.steam2depot"
INSTALL_PATH="/usr/local/bin/steam2depot"

echo "📥 Installing steam2depot..."

# Créer le dossier
mkdir -p "$CLONE_DIR"

# Télécharger le script dans le dossier
echo "🌐 Downloading steam2depot.sh..."
curl -fsSL "$RAW_SCRIPT_URL" -o "$CLONE_DIR/steam2depot.sh"

# Rendre exécutable
chmod +x "$CLONE_DIR/steam2depot.sh"

# Installer dans /usr/local/bin
echo "⚙️ Installing to $INSTALL_PATH..."
sudo cp "$CLONE_DIR/steam2depot.sh" "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH"

echo "✅ Done! You can now use:"
echo "👉 steam2depot"
