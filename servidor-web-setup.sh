#!/bin/bash

echo 'Atualizando servidor...'

apt-get update

apt-get upgrade

echo 'Servidor atualizado...'

##############################

echo 'Instalando servidor web...'

apt-get install apache2 -y

echo 'Servidor web instalado...'

##############################

echo 'Instalando Unzip...'

apt-get install unzip -y

echo 'Unzip instalado...'

##############################

echo 'Baixando e descompactando aplicação web...'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo 'Arquivos baixados e descompactados...'

#############################

echo 'Transferindo arquivos de aplicação web...'

cd linux-site-dio-main
cp -R * /var/www/html

echo 'Arquivos tranferidos...'

############################

echo 'Script finalizado.'

