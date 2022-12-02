#!/bin/bash

echo 'Removendo Unzip...'

apt-get remove unzip -y

echo 'Unzip removido...'

########################

echo 'Apagando arquivos de aplicação web...'

####Pasta TMP####

rm -f -r /tmp/main.zip
rm -f -r /tmp/systemd-private*apache2*
rm -f -r /tmp/linux-site-dio-main

####Pasta WWW####

rm -f -r /var/www/html/*

echo 'Arquivos apagados...'

########################

echo 'Desinstalando servidor web...'

apt-get remove apache2 -v -y

cd /etc/
rm -r -f apache2

echo 'Servidor Web desinstalado...'

########################

echo 'Script finalizado.'
