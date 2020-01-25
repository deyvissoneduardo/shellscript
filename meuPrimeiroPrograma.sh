#!/bin/bash 

#Primero Programa usando pseudocodigo

#Mostra que o programa comecou

echo "O Programa foi iniciado...."

#Mostra hostname do sistema

echo "O nome da maquina e: $(hostname)"

#Mostra versao do kernel

echo "Versão do Kernel: $(uname -r)"

#Mostra informacao sobre a maquina

echo "Info sobre a maquina:
$(uname -m)"

#Mostra dispositivos em blocos disponiveis

echo "Dispositivos em blocos disponiveis:
$(lsblk)"

#Mostra espaco do sistema
echo "Espaço do sistema: $(df -h)"
