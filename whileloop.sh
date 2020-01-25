#!/bin/bash

#Exemplo de while

COUNTER=1

while [[ ${COUNTER} -le 10 ]]
	do
		echo "Volta de número ${COUNTER}"
		((COUNTER++))
	done

echo "Valor da ultima volta ${COUNTER}"
