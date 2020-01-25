#!/bin/bash

#Teste se o usuario tem permissao de root

#Nome: ./testeRoot.sh

#Verifica a permissao do usuario
if [[ ${UID} -eq 0 ]]

#Se for root, roda opçoes de root
then
	echo "Voce e um super Usuario"
	echo "Deseja para o servido Apache?"
	echo "Digite (s) para sim, (n) para não"
	read RESPOSTA

	if [[ ${RESPOSTA} = "s" ]]

		then
			echo "Parando servidor apache....."
			systemctl stop httpd
		else
			echo "OK. Nenhuma ação sera feita"
		fi

#Se não for root, pede para virar
else
	echo "Vire root para usar esse programa"

#Encerra condicional
fi

