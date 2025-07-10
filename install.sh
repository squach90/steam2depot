#!/bin/bash
set -e

REPO_URL="https://github.com/squach90/steam2depot.git"
RAW_SCRIPT_URL="https://raw.githubusercontent.com/squach90/steam2depot/main/steam2depot.sh"
CLONE_DIR="$HOME/.steam2depot"
INSTALL_PATH="/usr/local/bin/steam2depot"

echo "📥 Installing steam2depot..."

# Créer le dossier local si nécessaire
mkdir -p "$CLONE_DIR"

# Télécharger le script principal depuis GitHub Raw
echo "🌐 Downloading script..."
curl -fsSL "$RAW_SCRIPT_URL" -o "$CLONE_DIR/steam2depot.sh"

# Rendre exécutable
chmod +x "$CLONE_DIR/steam2depot.sh"

# Copier dans /usr/local/bin
echo "⚙️ Installing to /usr/local/bin..."
sudo cp "$CLONE_DIR/steam2depot.sh" "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH"

echo "✅ Installation complete!"
echo "👉 You can now run: steam2depot"
