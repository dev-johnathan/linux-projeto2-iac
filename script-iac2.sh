#!/bin/bash

echo "Atualizando o Servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copoiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/dev-johnathan/Desenvolvendo-um-menu-hamburguer-e-morphing-menu-com-CSS-Transitions/archive/refs/heads/main.zip
unzip main.zip
cd Desenvolvendo-um-menu-hamburguer-e-morphing-menu-com-CSS-Transitions-main
cp -R * /var/www/html/

