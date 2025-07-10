# steam2depot

A small Bash script to quickly extract a game's Steam AppID and generate a `download_depot` command.

---

## ✅ Features

- Searches for a game using the Steam Store API
- Extracts the first AppID found
- Automatically calculates the Depot ID (AppID + 1)
- Generates the `download_depot` command
- Copies the result to the clipboard (macOS only)

---

## 🔧 Requirements

- Bash
- `curl`
- `git`
- `pbcopy` (macOS only, for clipboard copy)

---

## 🔧 Install

Copy and paste this command : 
```bash
curl -fsSL https://raw.githubusercontent.com/squach90/steam2depot/main/install.sh | bash
``` 


```
```
---

## 🚀 Usage

```bash
./steam2depot.sh
```

Then enter the name of the game. Example:

```text
Welcome on steam2depot !
🔍 Steam Game Name: balatro

✅ First AppID     : 2379780
🔢 Depot ID        : 2379781
🚀 Final Command   : download_depot 2379780 2379781
```

---

## 📋 Clipboard Copy
On macOS, the command will automatically be copied to your clipboard after you press Enter.

---

## 📁 File

Make it executable if needed: `chmod +x steam2depot.sh`
