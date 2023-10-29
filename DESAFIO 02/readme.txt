script-desafio2.sh
CRIANDO UM SCRIPT para executar no Linux:

#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/ /desafio2.zip
unzip desafio2.zip
cd linux-site-dio-main
cp -R * /var/www/html/