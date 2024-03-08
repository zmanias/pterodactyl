echo "Install Panel Pterodactyl"
mkdir pterodactyl
cd pterodactyl
mkdir panel
cd panel
wget https://raw.githubusercontent.com/zmanias/pterodactyl/main/Node/docker-compose.yml
docker-compose up -d
clear
read -p 'Enter To Continue Set User/Pass'
docker-compose run --rm panel php artisan p:user:make