#!/bin/bash

echo 'Removendo Unzip...'

apt-get remove unzip -y

echo 'Unzip removido...'

########################

echo 'Apagando arquivos de aplicação web...'

cd /tmp
rm -f linux-site-dio-main.zip
rm -f -r linux-site-dio-main

echo 'Arquivos apagados...'

########################

echo 'Desinstalando servidor web...'

apt-get remove apache2 -v -y

echo 'Servidor Web desinstalado...'

########################

echo 'Script finalizado.'
