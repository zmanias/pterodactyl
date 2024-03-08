echo "Install Wings/Vps"
mkdir pterodactyl
cd pterodactyle
mkdir wings
cd wings
wget https://raw.githubusercontent.com/zmanias/pterodactyl/main/Node/docker-compose.yml
docker-compose up -d
clear
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 1bDFqz4Hvdq3rTw4MegFfgFV8Lz_2GuMtMpDj2gZMcEf298eA
ngrok tunnel --label edge=edghts_2dPWuKq2qqaKgRRkEJxpfvSUI2h http://localhost:443