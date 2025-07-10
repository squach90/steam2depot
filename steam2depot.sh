#Define

bold=$(tput bold)
normal=$(tput sgr0)

#Get User Input

echo "Welcome on ${bold}steam2depot${normal} !"
read -p 'Steam Game Name: ' gamename

curl https://store.steampowered.com/api/storesearch/\?term\=${gamename// /%20}\&l\=english\&cc\=us
