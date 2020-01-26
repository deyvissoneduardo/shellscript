#!/bin/bash

#Programa impar par

echo "Digite seu nome: "
read NOME

echo "Seja Bem vindo(a) ${NOME}"
echo "Deseja jogar? Escolar (s) para sim ou (n) para não."
read RESPOSTA

#Verifica se usuario quer jogar
if [[ ${RESPOSTA} = "s" ]]
	then 
		echo "Muito bem ${NOME}, vamos jogar....."
		echo "Digite um Número"
		read NUM

	 #Verifica se e impar ou par
 	 PAR=2
	 IMPAR=3

		if [[ $((NUM / PAR)) ]]	
		then
			echo "O número escolhido e par"
		elif [[ $((NUM / IMPAR )) ]]
		then 
			echo "O Numero escolhido e impar"	
		fi	
	else
		echo "Ok ${NOME}, quem sabe na proxima"
fi	
