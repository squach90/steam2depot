#!/bin/bash
set -e

REPO_URL="https://github.com/squach90/steam2depot.git"
CLONE_DIR="$HOME/.steam2depot"
INSTALL_PATH="/usr/local/bin/steam2depot"

echo "📥 Cloning or updating repo..."

if [ -d "$CLONE_DIR" ]; then
  cd "$CLONE_DIR"
  rm steam2depot.sh
  curl -fsSL "$URL_RAW" -o steam2depot.sh
else
  curl -fsSL "$URL_RAW" -o steam2depot.sh
fi

echo "📦 Installing steam2depot..."

chmod +x "$CLONE_DIR/steam2depot.sh"
sudo cp "$CLONE_DIR/steam2depot.sh" /usr/local/bin/steam2depot
sudo chmod +x /usr/local/bin/steam2depot

echo "✅ Installation complete!"
echo "Run with: steam2depot"
