#!/bin/bash
set -e

# URL du script raw à télécharger
RAW_SCRIPT_URL="https://raw.githubusercontent.com/squach90/steam2depot/main/steam2depot.sh"

# Dossier local pour stocker le script
CLONE_DIR="$HOME/.steam2depot"

# Chemin d'installation du binaire
INSTALL_PATH="/usr/local/bin/steam2depot"

echo "📥 Installing steam2depot..."

# Créer le dossier local si nécessaire
mkdir -p "$CLONE_DIR"

# Télécharger le script steam2depot.sh depuis GitHub
echo "🌐 Downloading script..."
curl -fsSL "$RAW_SCRIPT_URL" -o "$CLONE_DIR/steam2depot.sh"

# Donner les permissions d'exécution
chmod +x "$CLONE_DIR/steam2depot.sh"

# Copier dans /usr/local/bin
echo "⚙️ Installing to $INSTALL_PATH..."
sudo cp "$CLONE_DIR/steam2depot.sh" "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH"

echo "✅ Installation complete!"
echo "👉 You can now run: steam2depot"
