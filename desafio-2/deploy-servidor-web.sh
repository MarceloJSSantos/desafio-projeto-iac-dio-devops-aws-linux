#!/bin/bash


#Atualiza o sistema
echo "Atualiza o sistema"

apt-get update
apt-get upgrade -y


#Instala o Apache
echo "Instala o pacote Apache2"

apt-get  install apache2 -y


#Instala o Unzip
echo "Instala o pacote Unzip"

apt-get  install unzip -y


#Baixa o arquivo zip especificado na pasta /tmp
echo "Baixa o arquivo zip com a aplicação e descompacta"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/aplicacao.zip -y
unzip /tmp/aplicacao.zip -d /tmp

#Baixa o arquivo zip especificado na pasta /tmp
echo "Copia os arquivos descompactados para a pasta padrão"

cp -r /tmp/linux-site-dio-main/* /var/www/html

 echo "Script Finalizado!"
