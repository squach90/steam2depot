#!/bin/bash
set -e

REPO_URL="https://github.com/tonpseudo/steam2depot.git"
CLONE_DIR="$HOME/.steam2depot"

echo "📥 Cloning or updating repo..."

if [ -d "$CLONE_DIR" ]; then
  cd "$CLONE_DIR"
  git pull origin main
else
  git clone "$REPO_URL" "$CLONE_DIR"
fi

echo "📦 Installing steam2depot..."

chmod +x "$CLONE_DIR/steam2depot.sh"
sudo cp "$CLONE_DIR/steam2depot.sh" /usr/local/bin/steam2depot
sudo chmod +x /usr/local/bin/steam2depot

echo "✅ Installation complete!"
echo "Run with: steam2depot"
