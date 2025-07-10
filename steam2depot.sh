#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "Welcome on ${bold}steam2depot${normal} !"
read -p '🔍 Steam Game Name: ' gamename

GameDetail="$(curl -s "https://store.steampowered.com/api/storesearch/?term=${gamename// /%20}&l=english&cc=us")"

# Extraire le premier ID trouvé
first_id=$(echo "$GameDetail" | tr -d '\n' | sed 's/{"type"/\n{"type"/g' |
  sed -nE 's/.*"id":([0-9]+).*/\1/p' | head -n 1)

# Vérifier qu'on a un ID
if [[ -z "$first_id" ]]; then
  echo "❌ No AppID found for '$gamename'."
  exit 1
fi

depotID=$((first_id + 1))

# Construire la commande finale
Result="download_depot $first_id $depotID"

echo ""
echo "✅ First AppID     : $first_id"
echo "🔢 Depot ID        : $depotID"
echo "🚀 Final Command   : $Result"

# Proposer la copie
echo ""
read -p "Press ${bold}Enter${normal} to copy the command to clipboard (or Ctrl+C to cancel)..."

if $is_macos; then
  echo "$Result" | pbcopy
else
  echo "⚠️ Clipboard copy not supported on this OS. Copy it manually:"
  echo "$Result"
fi
