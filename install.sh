#!/bin/bash


[[ "$(whoami)" != "root" ]] && {
    echo
    echo "Instale com usuario root!"
    echo
    exit 0
}
apt update -y
echo
echo "Instalando Bot, Aguarde..."
echo
apt install nodejs -y > /dev/null 2>&1
apt install unzip -y > /dev/null 2>&1
apt install screen -y > /dev/null 2>&1
apt install wget -y > /dev/null 2>&1
wget https://raw.githubusercontent.com/Stalkermtx/WaBot-VendasSSH/main/mult/onbot > /dev/null 2>&1
wget https://github.com/Stalkermtx/WaBot-VendasSSH/raw/main/mult/offbot > /dev/null 2>&1
wget https://github.com/Stalkermtx/WaBot-VendasSSH/raw/main/mult/qrcode > /dev/null 2>&1
wget https://github.com/Stalkermtx/WaBot-VendasSSH/raw/main/mult/config.js > /dev/null 2>&1
chmod +x onbot offbot qrcode
mv onbot offbot qrcode /bin
wget https://github.com/Stalkermtx/WaBot-VendasSSH/raw/main/mult/megahbot.zip -O /etc/megahbot.zip > /dev/null 2>&1
unzip /etc/megahbot.zip
mv megahbot /etc
echo
echo "Instalação do Bot Terminada! Não Esqueça de Editar Seus Dados no Arquivo Config.js"
echo
