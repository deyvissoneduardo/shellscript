#!/bin/bash

#Esse script cria um site com servido apache

#Instalar o pacotes necessarios para o apache
yum install -y httpd

#Abrir Firewall
firewall-cmd --permanent --add-service=http
firewall-cmd --reload

#Habilta o apache no inicio do sistema linux
systemctl enable httpd

#Inicio o servidor apos a instalacao
systemctl start httpd

#Criar o araquivo html
echo "Meu Primeiro site" > /var/www/html/index.html
