#!/bin/bash

#Nome: ./show

#Mensagem de boas vindas
echo "Bem Vindo ao Show $0."

#Coletando dados do cliente
echo "Qual seu nome?"
read NOME
echo "Qual sua idade?"
read IDADE 

#Fazendo teste com if then else 
if [[ ${IDADE} -ge 18 ]]

#Se for verdade 
then
	echo "Sr.(a) ${NOME} ja tem mais de 18, esta liberado"
	echo "pode entra no show"

#Teste com ElIF

elif [[ ${IDADE} -ge 16 ]]
	then
		echo "Sr.(a) ${NOME} voce tem 16 ou 17 anos"
		echo "esta liberado para o show 2"
	
#Se for falso
else
	echo "Sr.(a) ${NOME} infelizmento ainda não tem 18 anos"
	echo "não tem permisao para o show"

#Fechando o IF
fi
